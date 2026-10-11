#!/usr/bin/env python3
"""Source-linked module-owner census adapter; this module never invokes Lean.

The native census observer and core parser are copied from the independently
controlled canonical checker. Public, private, and generated declarations are
selected by owning module, not by their declaration namespace. Transitive
axioms and owned unsafe/partial flags are audited. The observer reports direct
references to the exact pinned native runtime helper; it does NOT report a
complete arbitrary unsafe/partial dependency-reference graph. That extension
would require new Lean-side code and native controls, rather than a parser claim.

An accepted parser result requires successful compilation, exact owner coverage,
source hashes for every owner (including zero-declaration modules), and the
native per-declaration verdict. The default policy admits no unsafe exceptions.
The caller must independently freeze and compile this helper, its generated
wrapper, and the entire expected project-owner closure with trust=0 and Werr.
A Python-only self-test is never evidence of a fresh Lean census.
"""
from __future__ import annotations

import hashlib
import json
import re
from collections.abc import Iterable, Mapping
from pathlib import Path
from typing import Any

NATIVE_CHECKER_SHA256 = "fa91959ff3d27586222b7bf600597a6c7acafaec6e21a36751dfcb2dfb83b747"
NATIVE_OBSERVER_SHA256 = "2ef82eba00df6982ba9f693896d77eff68d9cf39e9def13a29cc9c2eb4e26c74"
HELPER_MODULE = "MoebiusResponseOwnerAudit"
HELPER_PATH = Path(__file__).resolve().parent.parent / "checks/MoebiusResponseOwnerAudit.lean"

ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
RUNTIME_NAME = "GRWTSK.Algebra.orderedProduct._unsafe_rec"
RUNTIME_OWNER = "GRWTSK.Algebra.OrderedProduct"
RUNTIME_SOURCE = "GRWTSK/Algebra/OrderedProduct.lean"
RUNTIME_SOURCE_SHA256 = "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d"

# BEGIN byte-identical canonical parser functions.
def census_records(text, expected_modules):
    """Validate native census completeness separately from its trust verdict."""
    declarations = [json.loads(s) for s in re.findall(r"MATH_TRUST_DECL::(\{[^\n]+\})", text)]
    modules = [json.loads(s) for s in re.findall(r"MATH_TRUST_MODULE::(\{[^\n]+\})", text)]
    counts = re.findall(r"MATH_TRUST_COUNT::(\d+)", text)
    module_counts = re.findall(r"MATH_TRUST_MODULE_COUNT::(\d+)", text)
    if counts != [str(len(declarations))] or not declarations:
        raise RuntimeError("incomplete native declaration census")
    if module_counts != [str(len(modules))] or len({m["module"] for m in modules}) != len(modules):
        raise RuntimeError("incomplete native module census")
    if {m["module"] for m in modules} != set(expected_modules):
        raise RuntimeError("native module census differs from Git-visible source set")
    if len({d["name"] for d in declarations}) != len(declarations):
        raise RuntimeError("duplicate native declaration record")
    owner_set = {module["module"] for module in modules}
    if any(declaration.get("module") not in owner_set for declaration in declarations):
        raise RuntimeError("native declaration owner is absent from module census")
    if any(type(module.get("declarations")) is not int or module["declarations"] < 0
           for module in modules):
        raise RuntimeError("native module declaration count must be a nonnegative integer")
    if sum(module["declarations"] for module in modules) != len(declarations):
        raise RuntimeError("native module declaration totals do not match declaration census")
    for module in modules:
        if sum(d["module"] == module["module"] for d in declarations) != module["declarations"]:
            raise RuntimeError("native module declaration count mismatch: " + module["module"])
    return declarations, modules

def parse_census(text, expected_modules, source_hashes=None):
    source_hashes = {} if source_hashes is None else source_hashes
    declarations, modules = census_records(text, expected_modules)
    for declaration in declarations:
        known = (declaration["name"] == RUNTIME_NAME and declaration["module"] == RUNTIME_OWNER
                 and declaration["kind"] == "definition" and declaration["unsafe"]
                 and not declaration["partial"]
                 and source_hashes.get(RUNTIME_SOURCE) == RUNTIME_SOURCE_SHA256
                 and declaration.get("runtime_helper_owner_source_sha256") == RUNTIME_SOURCE_SHA256)
        if declaration["known_generated_runtime_helper"] != known:
            raise RuntimeError("invalid generated runtime helper classification")
        if (declaration["unsafe"] and not known) or declaration["partial"] or declaration["kind"] == "axiom":
            raise RuntimeError("unsafe, partial, or axiom declaration: " + declaration["name"])
        if not set(declaration["axioms"]) <= ALLOWED_AXIOMS:
            raise RuntimeError("unapproved transitive axiom: " + declaration["name"])
        if declaration["kind"] == "theorem" and declaration["direct_value_reference_to_runtime_helper"]:
            raise RuntimeError("theorem references unsafe runtime helper: " + declaration["name"])
    return declarations, modules

def error_messages(text):
    """Read both plain errors and Lean coded diagnostics such as error(lean.invalidField)."""
    return re.findall(r"^.*?\berror(?:\([^()\r\n]+\))?:[ \t]*([^\r\n]*)", text, re.MULTILINE)

def validate_native_fixture_output(case, stage, text, returncode, module):
    """Fail controls only for the intended reason, after complete native census."""
    errors = error_messages(text)
    if case == "sorry" and stage == "strict-source":
        intended = "declaration uses `sorry`"
        if returncode <= 0 or not errors or not all(message.startswith(intended) for message in errors):
            raise RuntimeError("strict sorry source did not fail only for its intended sorry warning")
        return {"expected": "strict sorry rejection", "matched_errors": errors}
    if stage in {"source", "warning-disabled-source"}:
        if returncode != 0 or errors:
            raise RuntimeError(case + " fixture source did not compile successfully")
        return {"expected": "source compilation", "matched_errors": []}
    declarations, modules = census_records(text, [module])
    if case == "positive":
        if returncode != 0 or errors:
            raise RuntimeError("positive fixture native audit did not compile successfully")
        parse_census(text, [module])
        names = {declaration["name"] for declaration in declarations}
        if not {"GRWTSK.Fixture.fixtureValue", "GRWTSK.Fixture.fixtureValue_eq_one",
                "GRWTSK.Fixture.patternedValue_zero", "GRWTSK.Fixture.patternedValue_succ"} <= names:
            raise RuntimeError("positive native census omitted fixture declarations")
        if not any(name.startswith("_private." + module + ".") and
                   name.endswith(".privateTruth") for name in names):
            raise RuntimeError("positive native census omitted private fixture declaration")
        if not {"GRWTSK.Fixture.patternedValue.eq_1", "GRWTSK.Fixture.patternedValue.eq_2"} <= names:
            raise RuntimeError("positive native census omitted compiler-generated equations")
        if not any(d["name"] == "GRWTSK.Fixture.patternedValue.match_1" and
                   d["module"] == module and d["kind"] == "definition" for d in declarations):
            raise RuntimeError("positive native census omitted compiler-generated matcher")
        if any(d.get("runtime_helper_owner_source_sha256") != RUNTIME_SOURCE_SHA256
               for d in declarations):
            raise RuntimeError("positive native audit did not receive configured source hash")
        return {"expected": "positive complete native census", "declarations": declarations,
                "modules": modules, "matched_errors": []}
    expected = {
        "sorry": "unapproved axiom sorryAx in GRWTSK.Fixture.sorryFalse",
        "custom-axiom": "new axiom: GRWTSK.Fixture.fabricatedFalse",
        "unsafe": "unsafe declaration: GRWTSK.Fixture.uncheckedNatural",
    }[case]
    if returncode <= 0 or not errors or not all(message.startswith("project trust audit failed:")
                                               for message in errors) or expected not in text:
        raise RuntimeError(case + " native control failed for an unintended reason")
    if case == "sorry":
        observed = any(d["name"] == "GRWTSK.Fixture.sorryFalse" and "sorryAx" in d["axioms"]
                       for d in declarations)
    elif case == "custom-axiom":
        observed = any(d["name"] == "GRWTSK.Fixture.fabricatedFalse" and d["kind"] == "axiom"
                       for d in declarations)
        observed = observed and any(d["name"] == "GRWTSK.Fixture.consumesFabricatedFalse" and
                                  "GRWTSK.Fixture.fabricatedFalse" in d["axioms"] for d in declarations)
        if "unapproved axiom GRWTSK.Fixture.fabricatedFalse" not in text:
            raise RuntimeError("custom axiom control did not exercise the transitive axiom gate")
    else:
        observed = any(d["name"] == "GRWTSK.Fixture.uncheckedNatural" and d["unsafe"]
                       and not d["known_generated_runtime_helper"] for d in declarations)
    if not observed:
        raise RuntimeError(case + " negative census does not contain the intended hostile declaration")
    return {"expected": expected, "declarations": declarations, "modules": modules,
            "matched_errors": errors}
# END byte-identical canonical parser functions.

_MODULE = re.compile(r"[A-Za-z_][A-Za-z_0-9]*(?:\.[A-Za-z_][A-Za-z_0-9]*)*\Z")
_SHA256 = re.compile(r"[0-9a-f]{64}\Z")
_KINDS = {"theorem", "definition", "opaque", "axiom", "constructor", "recursor", "inductive", "generated"}
_DECL_KEYS = {
    "module", "name", "kind", "type", "unsafe", "partial",
    "known_generated_runtime_helper", "runtime_helper_owner_source_sha256",
    "direct_value_reference_to_runtime_helper", "axioms",
}
_MARKERS = {"DECL", "MODULE", "COUNT", "MODULE_COUNT", "DEPENDENCY_MODULE"}
HELPER_SHA256 = "5ae82798ae286a8d2fea72cda53fbcb99028dae93a31511522610c03cc7e3c98"


def expected_owner_modules(owned_modules: Iterable[str]) -> list[str]:
    """Require the caller's complete fresh project-owner closure, not a namespace list."""
    owners = list(owned_modules)
    if any(type(owner) is not str or not _MODULE.fullmatch(owner)
           or not (owner == "GRWTSK" or owner.startswith("GRWTSK.")) for owner in owners):
        raise RuntimeError("invalid project owner module")
    if not owners or len(set(owners)) != len(owners):
        raise RuntimeError("owned modules must be nonempty and unique")
    return sorted(owners)


def generate_audit_source(
    owned_modules: Iterable[str], *, helper_module: str = HELPER_MODULE,
    runtime_owner_source_hash: str = "",
) -> str:
    """Import every frozen owner explicitly and invoke the unchanged native observer.

    Compile the helper as a separate operational module first. It is outside the
    project root, so its metaprogramming implementation is a recorded dependency,
    not falsely treated as an ordinary safe mathematical declaration. The helper
    and generated source themselves must be hash-pinned by the caller's receipt.
    """
    owners = expected_owner_modules(owned_modules)
    if type(helper_module) is not str or not _MODULE.fullmatch(helper_module):
        raise RuntimeError("invalid operational helper module")
    if helper_module == "GRWTSK" or helper_module.startswith("GRWTSK."):
        raise RuntimeError("operational helper must be outside project owner scope")
    if runtime_owner_source_hash and (
        runtime_owner_source_hash != RUNTIME_SOURCE_SHA256 or RUNTIME_OWNER not in owners
    ):
        raise RuntimeError("unapproved runtime owner source hash")
    imports = "".join("import " + owner + "\n" for owner in owners)
    return imports + "import " + helper_module + "\n\n#audit_math_trust " + json.dumps(runtime_owner_source_hash) + "\n"


def helper_source() -> bytes:
    """Return only the exact source-controlled observer, after verifying its pin."""
    data = HELPER_PATH.read_bytes()
    if hashlib.sha256(data).hexdigest() != HELPER_SHA256:
        raise RuntimeError("owner census observer differs from frozen native adaptation")
    return data


def _strict_records(text: str, owners: list[str]) -> tuple[list[dict], list[dict]]:
    if type(text) is not str:
        raise RuntimeError("native audit text must be a string")
    markers = re.findall(r"MATH_TRUST_([A-Z_]+)::", text)
    if any(marker not in _MARKERS for marker in markers):
        raise RuntimeError("unknown native census marker")
    try:
        declarations, modules = census_records(text, owners)
    except (KeyError, TypeError, ValueError, AttributeError) as error:
        raise RuntimeError("malformed native census record") from error
    observed = {marker: markers.count(marker) for marker in _MARKERS}
    if observed["DECL"] != len(declarations) or observed["MODULE"] != len(modules):
        raise RuntimeError("malformed or unparsed native census record")
    if observed["COUNT"] != 1 or observed["MODULE_COUNT"] != 1:
        raise RuntimeError("malformed or duplicated native census totals")
    for module in modules:
        if type(module) is not dict or set(module) != {"module", "declarations"}:
            raise RuntimeError("invalid native module record schema")
        if type(module["module"]) is not str:
            raise RuntimeError("invalid native module name")
    for declaration in declarations:
        if type(declaration) is not dict or set(declaration) != _DECL_KEYS:
            raise RuntimeError("invalid native declaration record schema")
        for key in ("module", "name", "kind", "type", "runtime_helper_owner_source_sha256"):
            if type(declaration[key]) is not str:
                raise RuntimeError("invalid native declaration text field: " + key)
        if not declaration["name"] or declaration["kind"] not in _KINDS:
            raise RuntimeError("invalid native declaration kind or name")
        for key in ("unsafe", "partial", "known_generated_runtime_helper",
                    "direct_value_reference_to_runtime_helper"):
            if type(declaration[key]) is not bool:
                raise RuntimeError("invalid native declaration boolean field: " + key)
        if type(declaration["axioms"]) is not list or any(
            type(axiom) is not str or not axiom for axiom in declaration["axioms"]
        ) or len(set(declaration["axioms"])) != len(declaration["axioms"]):
            raise RuntimeError("invalid native declaration axiom list")
    return declarations, modules


def validate_owner_census(
    text: str, owned_modules: Iterable[str], source_hashes: Mapping[str, str], *,
    returncode: int = 0, allow_pinned_runtime: bool = False,
) -> dict[str, Any]:
    """Accept a complete successful owner census tied to every owner's frozen source.

    ``source_hashes`` is module-name→SHA256, including the aggregate and any
    native project dependencies. Do not pass only the added theorem modules:
    every GRWTSK module actually imported must belong to the exact expected set.
    The source-free parser does not read or compile these sources; the replay
    must independently verify immutable source/object families before and after
    its trust=0 compilation. ``allow_pinned_runtime`` is opt-in only for the one
    separately justified, exact source-hashed OrderedProduct runtime helper.
    """
    owners = expected_owner_modules(owned_modules)
    if type(text) is not str:
        raise RuntimeError("native audit text must be a string")
    if type(returncode) is not int or returncode != 0 or error_messages(text):
        raise RuntimeError("native owner audit did not complete successfully")
    if not isinstance(source_hashes, Mapping) or set(source_hashes) != set(owners):
        raise RuntimeError("owner source hash coverage differs from expected module closure")
    if any(type(digest) is not str or not _SHA256.fullmatch(digest)
           for digest in source_hashes.values()):
        raise RuntimeError("invalid owner source SHA256")
    if type(allow_pinned_runtime) is not bool:
        raise RuntimeError("runtime exception policy must be explicit Boolean")
    _strict_records(text, owners)
    native_hashes = {}
    if allow_pinned_runtime:
        if source_hashes.get(RUNTIME_OWNER) != RUNTIME_SOURCE_SHA256:
            raise RuntimeError("runtime exception lacks independently pinned owner source")
        native_hashes[RUNTIME_SOURCE] = RUNTIME_SOURCE_SHA256
    declarations, modules = parse_census(text, owners, native_hashes)
    if not allow_pinned_runtime and any(d["known_generated_runtime_helper"] for d in declarations):
        raise RuntimeError("runtime exceptions disabled for this audit scope")
    return {
        "status": "OWNER_CENSUS_PARSED",
        "owned_module_count": len(modules),
        "declaration_count": len(declarations),
        "modules": modules,
        "declarations": declarations,
        "source_sha256_by_owner": {owner: source_hashes[owner] for owner in owners},
        "zero_declaration_modules": sorted(m["module"] for m in modules if m["declarations"] == 0),
        "allowed_transitive_axioms": sorted(ALLOWED_AXIOMS),
        "runtime_exception_enabled": allow_pinned_runtime,
        "observer_source_sha256": HELPER_SHA256,
        "observer_native_reference_sha256": NATIVE_OBSERVER_SHA256,
        "parser_native_reference_sha256": NATIVE_CHECKER_SHA256,
        "unsafe_partial_reference_scope": "owned declaration flags and direct exact pinned runtime references; not an arbitrary transitive reference graph",
        "fresh_kernel_check": "caller must link this parse result to its actual immutable trust=0/Werr run",
    }
