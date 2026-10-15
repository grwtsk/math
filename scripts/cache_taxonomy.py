#!/usr/bin/env python3
"""Validate method facets and durable revision records; establish no proof status.

The supplied table declares 215 records but supplies no 215 individual identities.
An empty identity inventory is therefore valid metadata and incomplete coverage.
This executable adapter is not a refinement proof of the referenced Lean models.
"""
import argparse
import copy
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import sys


SCHEMA = "math-cache-taxonomy-v1"
UNSET = object()
CANONICAL_FAMILIES = (
    ("01", "Counting, empirical frequency, and representations", 13),
    ("02", "Probability distribution models", 17),
    ("03", "Benford and significant-digit analysis", 12),
    ("04", "Zipf, rank-size, and heavy-tail analysis", 12),
    ("05", "Goodness-of-fit, uncertainty, and multiple testing", 15),
    ("06", "Sequential dependence, lag, and event timing", 12),
    ("07", "Classical statistical cryptanalysis", 11),
    ("08", "Boolean spectra and modern statistical cryptanalysis", 9),
    ("09", "Randomness tests and entropy-source assessment", 22),
    ("10", "Fourier transforms and spectral estimation", 17),
    ("11", "Time-frequency and multiresolution methods", 12),
    ("12", "Multivariate, latent-component, and graph spectra", 10),
    ("13", "Information measures and symbolic-feature analysis", 11),
    ("14", "scikit-learn implementation and workflow surface", 23),
    ("15", "GRL-derived evidence, composition, and change controls", 11),
    ("16", "Log-scale and continuous harmonic bridges", 8),
)
RELATION_TYPES = {
    "taxonomy-parent": ("taxonomy", {"family"}, {"family"}),
    "taxonomy-membership": ("taxonomy", {"method"}, {"family"}),
    "formal-implication": ("formal-implication", {"method"}, {"method"}),
    "provenance": ("provenance", {"method", "decision", "contribution"}, {"source"}),
    "dependency": ("dependency", {"method"}, {"method"}),
    "communication": ("communication", {"decision", "contribution"}, {"communication"}),
    "governance": ("governance", {"decision"}, {"family", "method", "contribution"}),
}
_HEX = re.compile(r"[0-9a-f]{64}\Z")
_ID = re.compile(r"[A-Za-z0-9][A-Za-z0-9:._/-]*\Z")
_COMPONENT = re.compile(r"[A-Za-z][A-Za-z0-9]*\Z")
_FORBIDDEN_HOME_COMPONENTS = {
    "CCC", "GRL", "RiemannHypothesis", "Conversation", "ProofHorizon", "CorkscrewChamberCap",
    "HadwigerNelson", "Waveform", "SpectralUnificationOfComputabilityAndAlgebraicSymmetry",
}
_FAMILY_MODES = {"01": "mixed", "03": "advisory", "04": "advisory", "09": "advisory",
                 "12": "advisory", "13": "advisory", "15": "admission-gate"}


class TaxonomyError(ValueError):
    """A structural admission obligation was not met."""


def _require(condition, message):
    if not condition:
        raise TaxonomyError(message)


def _shape(value, required, optional=(), label="record"):
    _require(isinstance(value, dict), label + " must be an object")
    missing = set(required) - set(value)
    extra = set(value) - set(required) - set(optional)
    _require(not missing and not extra,
             "%s schema fields: missing=%s extra=%s" % (label, sorted(missing), sorted(extra)))


def _text(value, label):
    _require(isinstance(value, str) and bool(value.strip()), label + " must be nonempty text")


def _identifier(value, label):
    _require(isinstance(value, str) and _ID.fullmatch(value) is not None,
             label + " must be a stable identifier")


def _strings(value, label):
    _require(isinstance(value, list), label + " must be a list")
    for member in value:
        _text(member, label + " member")
    _require(len(value) == len(set(value)), label + " has duplicates")


def _path(value, label):
    _text(value, label)
    p = PurePosixPath(value)
    _require(not p.is_absolute() and "\\" not in value and "\x00" not in value
             and all(part not in (".", "..", "") for part in value.split("/")),
             label + " must be a normalized repository-relative path")


def revision_identity(document):
    """Canonical JSON SHA256 identity, excluding only the identity slot itself.

    Equality of digest strings is bookkeeping, not a theorem of hash injectivity.
    """
    payload = copy.deepcopy(document)
    _require(isinstance(payload.get("revision"), dict), "revision must be an object")
    payload["revision"].pop("id", None)
    raw = json.dumps(payload, ensure_ascii=False, sort_keys=True,
                     separators=(",", ":"), allow_nan=False).encode("utf-8")
    return hashlib.sha256(raw).hexdigest()


def exact_coverage(expected_ids, actual_ids):
    """Compare identities, rejecting duplicate lists even when cardinality agrees."""
    _strings(expected_ids, "expected identities")
    _strings(actual_ids, "actual identities")
    expected, actual = set(expected_ids), set(actual_ids)
    return {"exact": expected == actual, "missing": sorted(expected - actual),
            "unexpected": sorted(actual - expected)}


def _acyclic(edges, identifiers):
    adjacency = {ident: [] for ident in identifiers}
    for child, parent in edges:
        adjacency[child].append(parent)
    # Iterative traversal avoids an incidental recursion-depth acceptance bound.
    state = {}
    for initial in adjacency:
        if state.get(initial) == 2:
            continue
        stack = [(initial, False)]
        while stack:
            node, leaving = stack.pop()
            if leaving:
                state[node] = 2
            elif state.get(node) != 2:
                _require(state.get(node) != 1, "taxonomy parent cycle at " + node)
                state[node] = 1
                stack.append((node, True))
                stack.extend((parent, False) for parent in reversed(adjacency[node]))


def validate_taxonomy(document, expected_current=UNSET, require_complete=False):
    """Return structural coverage information or raise TaxonomyError.

    expected_current is an external compare-and-swap premise. This pure validator
    never updates a ref or turns metadata, reachability, or hashes into a proof.
    """
    _shape(document, ("schema", "id", "revision", "declared_family_count",
                     "declared_record_total", "identity_inventory", "families", "records",
                     "aliases", "sources", "communications", "relations", "decisions",
                     "contributions", "design_antecedents", "limitations"), label="taxonomy")
    _require(document["schema"] == SCHEMA, "unknown taxonomy schema")
    _identifier(document["id"], "taxonomy id")
    revision = document["revision"]
    _shape(revision, ("id", "parent", "expected_current"), label="revision")
    for field in ("id", "parent", "expected_current"):
        _require((field != "id" and revision[field] is None)
                 or isinstance(revision[field], str) and _HEX.fullmatch(revision[field]),
                 "invalid revision " + field)
    _require(revision["id"] == revision_identity(document), "revision content identity mismatch")
    _require(revision["parent"] == revision["expected_current"],
             "revision parent differs from expected current identity")
    _require(revision["parent"] != revision["id"], "revision cannot be its own parent")
    if expected_current is not UNSET:
        _require(revision["expected_current"] == expected_current, "stale revision expected identity")
    _require(type(document["declared_family_count"]) is int
             and document["declared_family_count"] == 16, "declared family count must be 16")
    _require(type(document["declared_record_total"]) is int
             and document["declared_record_total"] == 215, "declared total must be 215")
    for field in ("families", "records", "aliases", "sources", "communications", "relations",
                  "decisions", "contributions", "design_antecedents"):
        _require(isinstance(document[field], list), field + " must be a list")
    _strings(document["limitations"], "limitations")

    entities = {}

    def register(entry, kind):
        _identifier(entry["id"], kind + " id")
        _require(entry["id"] not in entities, "duplicate stable id: " + entry["id"])
        entities[entry["id"]] = kind

    families = {}
    for family in document["families"]:
        _shape(family, ("id", "code", "canonical_family", "declared_records", "examples",
                        "structural_use"), label="family")
        register(family, "family")
        code = family["code"]
        _require(isinstance(code, str) and code not in families, "duplicate or invalid family code")
        _require(code in {canonical[0] for canonical in CANONICAL_FAMILIES},
                 "canonical family codes: unexpected " + code)
        families[code] = family
        _require(family["id"] == "method-family:" + code, "family stable id must bind its code")
        _require(type(family["declared_records"]) is int, "family count must be an integer")
        _strings(family["examples"], "family examples")
        _require(bool(family["examples"]), "family examples must not be empty")
        usage = family["structural_use"]
        _shape(usage, ("mode", "application", "implementation"), label="structural use")
        _require(usage["mode"] in ("admission-gate", "advisory", "not-applied", "mixed"),
                 "unknown structural-use mode")
        _require(usage["mode"] == _FAMILY_MODES.get(code, "not-applied"),
                 "structural applicability cannot promote an unimplemented statistical family")
        _text(usage["application"], "structural-use application")
        _require(usage["implementation"] in ("exact-structural-checks-only", "not-implemented"),
                 "no statistical algorithm implementation is admitted by this schema")
        _require(usage["implementation"] == ("exact-structural-checks-only"
                 if code in ("01", "15") else "not-implemented"),
                 "statistical family cannot claim implementation through structural checks")
    _require(set(families) == {code for code, _, _ in CANONICAL_FAMILIES},
             "canonical family codes missing or unexpected")
    for code, title, count in CANONICAL_FAMILIES:
        family = families[code]
        _require(family["canonical_family"] == title and family["declared_records"] == count,
                 "canonical family title/count mismatch for " + code)
    _require(sum(family["declared_records"] for family in families.values()) == 215,
             "family counts do not equal declared total")
    family_ids = {family["id"] for family in families.values()}
    actual_counts = {ident: 0 for ident in family_ids}
    method_ids = []
    for record in document["records"]:
        _shape(record, ("id", "label", "primary_family", "method_facets", "primary_home"),
               label="method record")
        register(record, "method")
        method_ids.append(record["id"])
        _text(record["label"], "method label")
        _identifier(record["primary_family"], "primary family")
        _require(record["primary_family"] in family_ids, "dangling primary family")
        _strings(record["method_facets"], "method facets")
        _require(set(record["method_facets"]) <= family_ids, "dangling method facet")
        actual_counts[record["primary_family"]] += 1
        home = record["primary_home"]
        _shape(home, ("subject", "object"), label="primary mathematical home")
        _require(isinstance(home["subject"], str) and _COMPONENT.fullmatch(home["subject"]),
                 "mathematical subject must be one path component")
        _path(home["object"], "mathematical object")
        _require(all(_COMPONENT.fullmatch(part) for part in home["object"].split("/")),
                 "mathematical object must use mathematical module components")
        _require(not ({home["subject"]} | set(home["object"].split("/")))
                 & _FORBIDDEN_HOME_COMPONENTS,
                 "method facet cannot replace a canonical mathematical subject")
    for family in families.values():
        _require(actual_counts[family["id"]] <= family["declared_records"],
                 "actual family inventory exceeds declared count")

    for source in document["sources"]:
        _shape(source, ("id", "kind", "path", "sha256"), label="source")
        register(source, "source")
        _require(source["kind"] in ("formal-source", "source-document"), "unknown source kind")
        _path(source["path"], "source path")
        _require(isinstance(source["sha256"], str) and _HEX.fullmatch(source["sha256"]),
                 "source sha256 must be explicit")
    for communication in document["communications"]:
        _shape(communication, ("id", "kind", "path"), label="communication record")
        register(communication, "communication")
        _require(communication["kind"] in ("task", "event"), "unknown communication kind")
        _path(communication["path"], "communication path")
        _require(communication["path"].startswith("cache/coordination/"),
                 "communication path outside repository coordination area")
    decision_ids, premise_ids = set(), set()
    for decision in document["decisions"]:
        _shape(decision, ("id", "statement", "rationale", "scope", "premises", "state"),
               label="decision")
        register(decision, "decision")
        decision_ids.add(decision["id"])
        for field in ("statement", "rationale", "scope"):
            _text(decision[field], "decision " + field)
        _require(decision["state"] == "recorded", "decision record cannot assert theorem acceptance")
        _require(isinstance(decision["premises"], list), "decision premises must be a list")
        for premise in decision["premises"]:
            _shape(premise, ("id", "statement", "status", "evidence_refs"), label="premise")
            register(premise, "premise")
            _require(premise["id"] not in premise_ids, "duplicate premise id")
            premise_ids.add(premise["id"])
            _text(premise["statement"], "premise statement")
            _require(premise["status"] in ("open", "unreplayed", "historical", "refuted"),
                     "Python records cannot discharge a mathematical premise")
            _strings(premise["evidence_refs"], "premise evidence references")
    for contribution in document["contributions"]:
        _shape(contribution, ("id", "agent", "scope", "paths", "decision_ids", "premise_ids",
                              "attribution"), label="contribution")
        register(contribution, "contribution")
        for field in ("agent", "scope", "attribution"):
            _text(contribution[field], "contribution " + field)
        _strings(contribution["paths"], "contribution paths")
        for path in contribution["paths"]:
            _path(path, "contribution path")
        _strings(contribution["decision_ids"], "contribution decisions")
        _strings(contribution["premise_ids"], "contribution premises")
        _require(set(contribution["decision_ids"]) <= decision_ids, "dangling contribution decision")
        _require(set(contribution["premise_ids"]) <= premise_ids, "dangling contribution premise")
    for decision in document["decisions"]:
        for premise in decision["premises"]:
            _require(set(premise["evidence_refs"]) <= set(entities), "dangling premise evidence")

    aliases = set()
    for alias in document["aliases"]:
        _shape(alias, ("id", "target"), label="alias")
        _identifier(alias["id"], "alias id")
        _identifier(alias["target"], "alias target")
        _require(alias["id"] not in entities and alias["id"] not in aliases, "alias collision")
        _require(alias["target"] in entities, "alias target must be a canonical existing identity")
        aliases.add(alias["id"])
    relation_ids, relation_tuples, parents = set(), set(), []
    sources = {entry["id"]: entry for entry in document["sources"]}
    for relation in document["relations"]:
        _shape(relation, ("id", "kind", "category", "source", "target", "evidence_refs"),
               ("declaration", "claim_status"), label="relation")
        _identifier(relation["id"], "relation id")
        _require(relation["id"] not in relation_ids and relation["id"] not in entities
                 and relation["id"] not in aliases, "duplicate or colliding relation identity")
        relation_ids.add(relation["id"])
        _text(relation["kind"], "relation kind")
        _require(relation["kind"] in RELATION_TYPES, "unknown relation kind")
        category, left_kinds, right_kinds = RELATION_TYPES[relation["kind"]]
        _require(relation["category"] == category, "relation category type confusion")
        _identifier(relation["source"], "relation source")
        _identifier(relation["target"], "relation target")
        _require(entities.get(relation["source"]) in left_kinds
                 and entities.get(relation["target"]) in right_kinds,
                 "dangling or ill-typed relation endpoints")
        triple = (relation["kind"], relation["source"], relation["target"])
        _require(triple not in relation_tuples, "duplicate typed relation")
        relation_tuples.add(triple)
        _strings(relation["evidence_refs"], "relation evidence references")
        _require(set(relation["evidence_refs"]) <= set(sources), "dangling relation evidence source")
        if relation["kind"] == "formal-implication":
            _text(relation.get("declaration"), "formal implication declaration")
            _require(relation.get("claim_status") in ("unreplayed", "historical", "conditional"),
                     "formal implication metadata cannot promote proof status")
            _require(any(sources[ident]["kind"] == "formal-source"
                         for ident in relation["evidence_refs"]), "formal implication lacks source binding")
        else:
            _require("declaration" not in relation and "claim_status" not in relation,
                     "nonformal relation cannot carry formal implication fields")
        if relation["kind"] == "taxonomy-parent":
            parents.append((relation["source"], relation["target"]))
        if relation["kind"] == "taxonomy-membership":
            method = next(entry for entry in document["records"]
                          if entry["id"] == relation["source"])
            _require(relation["target"] in [method["primary_family"]] + method["method_facets"],
                     "taxonomy membership conflicts with declared method facets")
    _acyclic(parents, family_ids)

    for antecedent in document["design_antecedents"]:
        _shape(antecedent, ("path", "declarations", "role", "binding"), label="design antecedent")
        _path(antecedent["path"], "antecedent path")
        _require(antecedent["path"].startswith("GRWTSK/") and antecedent["path"].endswith(".lean"),
                 "design antecedent must name a mathematical Lean module")
        _strings(antecedent["declarations"], "antecedent declarations")
        _text(antecedent["role"], "antecedent role")
        _require(antecedent["binding"] == "design-reference-only-not-current-replay",
                 "antecedent reference cannot assert acceptance")

    inventory = document["identity_inventory"]
    _shape(inventory, ("status", "expected_record_ids"), label="identity inventory")
    _require(inventory["status"] in ("not-provided", "partial", "provided"), "unknown inventory status")
    if inventory["status"] != "provided":
        _require(inventory["expected_record_ids"] is None, "unprovided identities cannot be fabricated")
        _require(inventory["status"] != "not-provided" or not method_ids,
                 "not-provided inventory cannot contain method records")
        coverage = {"exact": False, "missing": None, "unexpected": None}
    else:
        expected = inventory["expected_record_ids"]
        _strings(expected, "expected record ids")
        _require(len(expected) == 215, "expected identity universe does not contain 215 identities")
        coverage = exact_coverage(expected, method_ids)
        _require(coverage["exact"], "method identity coverage mismatch: " + json.dumps(coverage))
        _require(all(actual_counts[family["id"]] == family["declared_records"]
                     for family in families.values()), "family identity coverage count mismatch")
    _require(not require_complete or coverage["exact"], "individual method coverage is incomplete")
    return {"schema": SCHEMA, "revision": revision["id"], "family_count": len(families),
            "declared_record_total": 215, "actual_record_count": len(method_ids),
            "identity_coverage": coverage, "proof_acceptance": "not-established",
            "statistical_algorithms": "not-implemented"}


def validate_transition(previous, proposed):
    """Validate a proposed revision and retain literal decision/contribution history."""
    validate_taxonomy(previous)
    report = validate_taxonomy(proposed, expected_current=previous["revision"]["id"])
    _require(previous["id"] == proposed["id"], "taxonomy identity changed across revision")
    for collection in ("decisions", "contributions", "aliases"):
        new_entries = {entry["id"]: entry for entry in proposed[collection]}
        for old in previous[collection]:
            _require(new_entries.get(old["id"]) == old,
                     "revision erased or rewrote historical " + collection + ": " + old["id"])
    old_records = {entry["id"] for entry in previous["records"]}
    _require(old_records <= {entry["id"] for entry in proposed["records"]},
             "revision erased a stable method identity")
    return report


def _unique_json(pairs):
    value = {}
    for key, member in pairs:
        _require(key not in value, "duplicate JSON key: " + key)
        value[key] = member
    return value


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", choices=("check", "identity", "transition"))
    parser.add_argument("path", nargs="?", default="cache/taxonomy.json")
    parser.add_argument("--previous", help="previous taxonomy for transition checks")
    parser.add_argument("--expected-current", default=UNSET,
                        help="external current identity, or NONE for an initial revision")
    parser.add_argument("--require-complete", action="store_true")
    args = parser.parse_args(argv)
    try:
        document = json.loads(Path(args.path).read_text(encoding="utf-8"), object_pairs_hook=_unique_json)
        if args.command == "identity":
            print(revision_identity(document))
            return 0
        current = None if args.expected_current == "NONE" else args.expected_current
        if args.command == "transition":
            _require(args.previous is not None, "transition requires --previous")
            previous = json.loads(Path(args.previous).read_text(encoding="utf-8"), object_pairs_hook=_unique_json)
            report = validate_transition(previous, document)
            if current is not UNSET or args.require_complete:
                validate_taxonomy(document, current, args.require_complete)
        else:
            report = validate_taxonomy(document, current, args.require_complete)
        print(json.dumps(report, ensure_ascii=False, sort_keys=True, indent=2))
        return 0
    except (TaxonomyError, OSError, ValueError, KeyError, TypeError) as error:
        print("taxonomy check failed: " + str(error), file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
