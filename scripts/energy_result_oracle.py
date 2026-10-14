"""Pure, source-bound result contracts for the selected Energy consumer.

No compiler, filesystem, import-cache or replay authority is supplied here.
The driver must freeze/guard the complete actual import closure, compiler and
dependency objects independently. The 243 consumer records lack unsafe/partial
fields; their equality is not a replacement for a fresh complete owned audit.
The portable contract records the exact qualified 26-source generation and
six measured failures. Changed source bytes require new qualified contracts.
"""
from dataclasses import dataclass
import hashlib
import json
import re

CONTRACT_SHA256 = "0c72fd1fb861b14cc580b166f1084ef65c000c4987e688ad3f3cc6998728f29b"
CONSUMER_SOURCE = "checks/Analysis/Energy/Declarations.lean"
CONTROL_SOURCES = frozenset("checks/Analysis/Energy/Controls/" + name + ".lean" for name in
                           ("MissingBudget", "DeterminantPaysBudget", "WrongPhase",
                            "SingleRate", "FiniteSamples", "DroppedResidual"))
DIAGNOSTIC_KEYS = frozenset(("caption", "data", "endPos", "fileName", "isSilent",
                             "keepFullRange", "kind", "pos", "severity"))
ROW_KEYS = frozenset(("module", "name", "kind", "type", "axioms"))
STANDARD_AXIOMS = frozenset(("propext", "Classical.choice", "Quot.sound"))


def _unique_object(pairs):
    result = {}
    for key, value in pairs:
        if key in result:
            raise ValueError("duplicate JSON key: " + key)
        result[key] = value
    return result


def _reject_number(value):
    raise ValueError("noninteger/nonfinite JSON number: " + value)


def _json(text):
    try:
        return json.loads(text, object_pairs_hook=_unique_object,
                          parse_constant=_reject_number, parse_float=_reject_number)
    except (ValueError, TypeError, UnicodeError, RecursionError) as error:
        raise ValueError("invalid strict Energy JSON") from error


def _same(left, right):
    """Recursive type identity avoids Python's False == 0 and True == 1."""
    if type(left) is not type(right):
        return False
    if type(left) is dict:
        return (set(left) == set(right)
                and all(_same(left[key], right[key]) for key in left))
    if type(left) in (list, tuple):
        return len(left) == len(right) and all(_same(a, b) for a, b in zip(left, right))
    return left == right


def _hash(data):
    if type(data) is not bytes:
        raise ValueError("immutable source/contract bytes are required")
    return hashlib.sha256(data).hexdigest()


@dataclass(frozen=True)
class EnergyContract:
    """Immutable serialized contract; each use verifies its embedded digest."""
    raw: bytes


def load_contract(raw):
    if _hash(raw) != CONTRACT_SHA256:
        raise ValueError("Energy contract differs from its source-linked qualification")
    data = _json(raw)
    keys = {"schema", "authority", "pins", "source_sha256", "consumer",
            "negative_profiles", "scope"}
    if type(data) is not dict or set(data) != keys or data["schema"] != "energy-result-contracts-v1":
        raise ValueError("invalid Energy contract schema")
    sources = data["source_sha256"]
    if (type(sources) is not dict or len(sources) != 26
            or any(type(k) is not str or type(v) is not str
                   or re.fullmatch(r"[0-9a-f]{64}", v) is None for k, v in sources.items())):
        raise ValueError("incomplete qualified Energy source generation")
    consumer = data["consumer"]
    if (type(consumer) is not dict
            or set(consumer) != {"source", "source_sha256", "count", "owners", "rows"}
            or consumer["source"] != CONSUMER_SOURCE
            or type(consumer["count"]) is not int or consumer["count"] != 243
            or type(consumer["owners"]) is not int or consumer["owners"] != 22):
        raise ValueError("invalid Energy consumer contract")
    _rows(consumer["rows"], consumer["count"], consumer["owners"])
    if set(data["negative_profiles"]) != CONTROL_SOURCES:
        raise ValueError("incomplete Energy negative profile family")
    for profile in data["negative_profiles"].values():
        if (type(profile) is not dict
                or set(profile) != {"source_sha256", "diagnostic", "source_span"}
                or type(profile["source_span"]) is not str
                or type(profile["source_sha256"]) is not str
                or re.fullmatch(r"[0-9a-f]{64}", profile["source_sha256"]) is None):
            raise ValueError("invalid Energy negative source contract")
        diagnostic = dict(profile["diagnostic"], fileName="/contract/source.lean")
        _diagnostic(diagnostic)
    return EnergyContract(raw)


def _contract(contract):
    if type(contract) is not EnergyContract:
        raise ValueError("load an immutable qualified Energy contract first")
    # Never accept a mutable caller-supplied row catalog or retargeted generation.
    load_contract(contract.raw)
    return _json(contract.raw)


def _context(data, context_source_hashes):
    if not _same(context_source_hashes, data["source_sha256"]):
        raise ValueError("Energy context sources are stale, incomplete or unexpected")


def _source(source, source_path, source_bytes, expected_digest, argv, json_mode):
    if (type(source) is not str or type(source_path) is not str
            or not source_path.startswith("/") or "\\" in source_path
            or any(part in ("", ".", "..") for part in source_path.split("/")[1:])
            or not source_path.endswith("/" + source)):
        raise ValueError("executed source filename must be an exact absolute source path")
    if _hash(source_bytes) != expected_digest:
        raise ValueError("executed Energy source differs from its qualification")
    if (type(argv) not in (list, tuple) or any(type(arg) is not str for arg in argv)
            or len(argv) != (7 if json_mode else 6)
            or not argv[0].startswith("/")
            or argv[1] != "--trust=0" or re.fullmatch(r"--memory=[1-9][0-9]*", argv[2]) is None
            or argv[3] != "--threads=1" or argv[4] != "-DwarningAsError=true"
            or list(argv[5:-1]) != (["--json"] if json_mode else [])
            or argv[-1] != source_path):
        raise ValueError("Energy invocation must bind trust-zero, fatal warnings and its exact filename")


def _result(returncode, stdout, stderr, timed_out, expected):
    if type(returncode) is not int or returncode != expected or timed_out is not False:
        raise ValueError("unexpected compiler exit or timeout")
    if type(stdout) is not str or type(stderr) is not str or stderr != "":
        raise ValueError("compiler output must be text with empty stderr")


def validate_positive_result(returncode, stdout, stderr, timed_out=False):
    """Check process success only; no declaration or proof-admission claim."""
    _result(returncode, stdout, stderr, timed_out, 0)
    return {"process_success_only": True,
            "stdout_sha256": _hash(stdout.encode("utf-8")),
            "stderr_sha256": _hash(stderr.encode("utf-8"))}


def _position(value):
    if (type(value) is not dict or set(value) != {"line", "column"}
            or type(value["line"]) is not int or type(value["column"]) is not int
            or value["line"] < 1 or value["column"] < 0):
        raise ValueError("invalid integer diagnostic source position")


def _diagnostic(value):
    if (type(value) is not dict or set(value) != DIAGNOSTIC_KEYS
            or any(type(value[key]) is not str for key in
                   ("caption", "data", "fileName", "kind", "severity"))
            or value["severity"] != "error" or value["isSilent"] is not False
            or value["keepFullRange"] is not False):
        raise ValueError("negative output differs from the nine-field compiler diagnostic schema")
    _position(value["pos"])
    _position(value["endPos"])


def _span(source_bytes, start, end):
    text = source_bytes.decode("utf-8")
    lines = text.splitlines(keepends=True)
    def offset(position):
        _position(position)
        line, column = position["line"], position["column"]
        if line > len(lines) or column > len(lines[line - 1].rstrip("\r\n")):
            raise ValueError("diagnostic position lies outside its source")
        return sum(len(item) for item in lines[:line - 1]) + column
    a, b = offset(start), offset(end)
    if b < a:
        raise ValueError("reversed diagnostic source range")
    return text[a:b]


def validate_negative_result(source, source_path, source_bytes, context_source_hashes,
                             returncode, stdout, stderr, timed_out=False, *, argv, contract):
    """Accept one exact measured rejection, normalizing its executed filename only."""
    data = _contract(contract)
    if type(source) is not str or source not in data["negative_profiles"]:
        raise ValueError("unqualified Energy negative source")
    profile = data["negative_profiles"][source]
    _context(data, context_source_hashes)
    _source(source, source_path, source_bytes, profile["source_sha256"], argv, True)
    _result(returncode, stdout, stderr, timed_out, 1)
    lines = [line for line in stdout.splitlines() if line.strip()]
    if len(lines) != 1:
        raise ValueError("negative control must emit one diagnostic only")
    diagnostic = _json(lines[0])
    _diagnostic(diagnostic)
    expected = dict(profile["diagnostic"], fileName=source_path)
    if not _same(diagnostic, expected):
        raise ValueError("negative diagnostic differs from the qualified literal fields")
    span = _span(source_bytes, diagnostic["pos"], diagnostic["endPos"])
    if span != profile["source_span"]:
        raise ValueError("negative diagnostic does not cover its qualified source expression")
    return {"source": source, "source_sha256": profile["source_sha256"],
            "diagnostic": diagnostic, "source_span": span,
            "sole_exact_rejection": True, "contract_sha256": CONTRACT_SHA256,
            "stdout_sha256": _hash(stdout.encode("utf-8"))}


def _rows(rows, count, owners):
    if type(rows) is not list or len(rows) != count:
        raise ValueError("incomplete Energy declaration family")
    for row in rows:
        if (type(row) is not dict or set(row) != ROW_KEYS
                or any(type(row[key]) is not str or not row[key]
                       for key in ("module", "name", "kind", "type"))
                or row["kind"] not in ("theorem", "definition")
                or type(row["axioms"]) is not list
                or any(type(axiom) is not str for axiom in row["axioms"])
                or len(set(row["axioms"])) != len(row["axioms"])
                or not set(row["axioms"]) <= STANDARD_AXIOMS):
            raise ValueError("Energy declaration fields/kind/axioms differ from the qualified schema")
    if len({row["name"] for row in rows}) != count or len({row["module"] for row in rows}) != owners:
        raise ValueError("Energy declaration family is duplicated or has wrong ownership coverage")


def validate_positive_audit(source, source_path, source_bytes, context_source_hashes,
                            returncode, stdout, stderr, timed_out=False, *, argv, contract):
    """Match all exact 243 native consumer rows; retain separate full-audit limits."""
    data = _contract(contract)
    consumer = data["consumer"]
    if source != consumer["source"]:
        raise ValueError("unqualified Energy positive audit source")
    _context(data, context_source_hashes)
    _source(source, source_path, source_bytes, consumer["source_sha256"], argv, False)
    validate_positive_result(returncode, stdout, stderr, timed_out)
    rows, counts, counted = [], [], False
    for line in stdout.splitlines():
        if not line.strip():
            continue
        if line.startswith("CCC_DECL::") and not counted:
            rows.append(_json(line[len("CCC_DECL::"):]))
        elif line == "CCC_COUNT::243":
            counted = True
            counts.append(line)
        else:
            raise ValueError("unrecognized/nonterminal Energy declaration or count output")
    if counts != ["CCC_COUNT::243"]:
        raise ValueError("Energy audit requires exactly one whole terminal count record of243")
    _rows(rows, consumer["count"], consumer["owners"])
    expected = {row["name"]: row for row in consumer["rows"]}
    if set(expected) != {row["name"] for row in rows}:
        raise ValueError("Energy declaration names are missing, duplicated or unexpected")
    if any(not _same(row, expected[row["name"]]) for row in rows):
        raise ValueError("Energy declaration owner/type/kind/axiom row differs from qualification")
    return {"declarations": rows, "count": 243, "owners": 22,
            "source_sha256": consumer["source_sha256"],
            "contract_sha256": CONTRACT_SHA256,
            "stdout_sha256": _hash(stdout.encode("utf-8")),
            "complete_consumer_family": True,
            "unsafe_partial_fields_reported_by_consumer": False,
            "complete_project_owned_audit": False,
            "whole_project_acceptance": False, "rh_proved": False}
