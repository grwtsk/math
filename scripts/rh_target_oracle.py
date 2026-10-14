"""Exact diagnostic contracts for the two pinned RH mathematical negative controls."""
import hashlib
import json
from pathlib import Path

NEGATIVE_PROFILES = {'checks/Logic/Counterexamples/PositivityIsNotVanishing.lean': {'caption': '',
                                                                'data': 'unsolved goals\n⊢ False',
                                                                'endPos': {'column': 57, 'line': 4},
                                                                'keepFullRange': False,
                                                                'kind': 'Tactic.unsolvedGoals',
                                                                'pos': {'column': 53, 'line': 3},
                                                                'source_sha256': '747a51d3c83e2ba94808f76c2b35b2130b4f23cb84f8f4722351c24003e0a219',
                                                                'source_span': 'by\n'
                                                                               '  norm_num '
                                                                               '[GRWTSK.RiemannHypothesis.rh_defect_eq_square]'},
 'checks/NumberTheory/Zeta/Riemann/ExcludedTrivialZero.lean': {'caption': '',
                                                               'data': 'unsolved goals\n'
                                                                       'case refine_2\n'
                                                                       '⊢ False',
                                                               'endPos': {'column': 12, 'line': 6},
                                                               'keepFullRange': False,
                                                               'kind': 'Tactic.unsolvedGoals',
                                                               'pos': {'column': 2, 'line': 6},
                                                               'source_sha256': '6e54ec9ddb515e9a2a428c0fb61ba050d64b53a895c74cd34c4fb1260f97b2ae',
                                                               'source_span': '· norm_num'}}


EXPECTED_DECLARATION_OWNERS = {'GRWTSK.RiemannHypothesis.NontrivialZetaZero': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero._proof_1': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.conjugate': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.critical_reflection': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.gamma_real_ne_zero': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.mem_critical_strip': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.ne_zero': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.Target.Statement': 'GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis',
 'GRWTSK.RiemannHypothesis.Target.Statement._proof_1': 'GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis',
 'GRWTSK.RiemannHypothesis.Target.statement_eq_mathlib': 'GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis',
 'GRWTSK.RiemannHypothesis.Target.statement_iff_defect_zero': 'GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion',
 'GRWTSK.RiemannHypothesis.criticalReflection': 'GRWTSK.Analysis.Complex.CriticalReflection',
 'GRWTSK.RiemannHypothesis.criticalReflection.eq_1': 'GRWTSK.Analysis.Complex.CriticalReflection',
 'GRWTSK.RiemannHypothesis.critical_reflection_eq_composite': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.critical_reflection_involutive': 'GRWTSK.Analysis.Complex.CriticalReflection',
 'GRWTSK.RiemannHypothesis.defect_nonnegative_does_not_force_universal_vanishing': 'GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff._simp_1': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff._simp_1': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff._simp_1': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.pole_is_excluded': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions',
 'GRWTSK.RiemannHypothesis.rhDefect': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions',
 'GRWTSK.RiemannHypothesis.rhDefect.eq_1': 'GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect',
 'GRWTSK.RiemannHypothesis.rh_defect_eq_norm_sq': 'GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect',
 'GRWTSK.RiemannHypothesis.rh_defect_eq_square': 'GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect',
 'GRWTSK.RiemannHypothesis.rh_defect_eq_zero_iff': 'GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect',
 'GRWTSK.RiemannHypothesis.rh_defect_nonneg': 'GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect',
 'GRWTSK.RiemannHypothesis.riemann_hypothesis_iff_defect_zero': 'GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect',
 'GRWTSK.RiemannHypothesis.trivial_zero_is_excluded': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions',
 'GRWTSK.RiemannHypothesis.zeroConjugate': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions',
 'GRWTSK.RiemannHypothesis.zeroConjugate.eq_1': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.zeroReflect': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions',
 'GRWTSK.RiemannHypothesis.zeroReflect.eq_1': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.zero_conjugate_involutive': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.zero_conjugate_reflect_commute': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry',
 'GRWTSK.RiemannHypothesis.zero_reflect_involutive': 'GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry'}


EXPECTED_DECLARATION_KINDS = {'GRWTSK.RiemannHypothesis.NontrivialZetaZero': 'definition',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero._proof_1': 'theorem',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.conjugate': 'theorem',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.critical_reflection': 'theorem',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.gamma_real_ne_zero': 'theorem',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.mem_critical_strip': 'theorem',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.ne_zero': 'theorem',
 'GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect': 'theorem',
 'GRWTSK.RiemannHypothesis.Target.Statement': 'definition',
 'GRWTSK.RiemannHypothesis.Target.Statement._proof_1': 'theorem',
 'GRWTSK.RiemannHypothesis.Target.statement_eq_mathlib': 'theorem',
 'GRWTSK.RiemannHypothesis.Target.statement_iff_defect_zero': 'theorem',
 'GRWTSK.RiemannHypothesis.criticalReflection': 'definition',
 'GRWTSK.RiemannHypothesis.criticalReflection.eq_1': 'theorem',
 'GRWTSK.RiemannHypothesis.critical_reflection_eq_composite': 'theorem',
 'GRWTSK.RiemannHypothesis.critical_reflection_involutive': 'theorem',
 'GRWTSK.RiemannHypothesis.defect_nonnegative_does_not_force_universal_vanishing': 'theorem',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff': 'theorem',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff._simp_1': 'theorem',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff': 'theorem',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff._simp_1': 'theorem',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff': 'theorem',
 'GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff._simp_1': 'theorem',
 'GRWTSK.RiemannHypothesis.pole_is_excluded': 'theorem',
 'GRWTSK.RiemannHypothesis.rhDefect': 'definition',
 'GRWTSK.RiemannHypothesis.rhDefect.eq_1': 'theorem',
 'GRWTSK.RiemannHypothesis.rh_defect_eq_norm_sq': 'theorem',
 'GRWTSK.RiemannHypothesis.rh_defect_eq_square': 'theorem',
 'GRWTSK.RiemannHypothesis.rh_defect_eq_zero_iff': 'theorem',
 'GRWTSK.RiemannHypothesis.rh_defect_nonneg': 'theorem',
 'GRWTSK.RiemannHypothesis.riemann_hypothesis_iff_defect_zero': 'theorem',
 'GRWTSK.RiemannHypothesis.trivial_zero_is_excluded': 'theorem',
 'GRWTSK.RiemannHypothesis.zeroConjugate': 'definition',
 'GRWTSK.RiemannHypothesis.zeroConjugate.eq_1': 'theorem',
 'GRWTSK.RiemannHypothesis.zeroReflect': 'definition',
 'GRWTSK.RiemannHypothesis.zeroReflect.eq_1': 'theorem',
 'GRWTSK.RiemannHypothesis.zero_conjugate_involutive': 'theorem',
 'GRWTSK.RiemannHypothesis.zero_conjugate_reflect_commute': 'theorem',
 'GRWTSK.RiemannHypothesis.zero_reflect_involutive': 'theorem'}


def _reject_constant(value):
    raise ValueError("nonfinite diagnostic value: " + value)


def _unique_object(pairs):
    value = {}
    for key, item in pairs:
        if key in value:
            raise ValueError("duplicate diagnostic field: " + key)
        value[key] = item
    return value


def _source_span(source_bytes, start, end):
    text = source_bytes.decode("utf-8")
    lines = text.splitlines(keepends=True)
    def offset(position):
        if not isinstance(position, dict) or set(position) != {"line", "column"}:
            raise ValueError("diagnostic position must be a line and column")
        line, column = position["line"], position["column"]
        if type(line) is not int or type(column) is not int or line < 1 or column < 0:
            raise ValueError("invalid diagnostic position")
        if line > len(lines) or column > len(lines[line - 1].rstrip("\r\n")):
            raise ValueError("diagnostic position is outside its source")
        return sum(len(item) for item in lines[:line - 1]) + column
    a = offset(start)
    if end is None:
        return None
    b = offset(end)
    if b < a:
        raise ValueError("reversed diagnostic range")
    return text[a:b]


def validate_negative_result(source, source_path, source_bytes, returncode,
                             stdout, stderr, timed_out=False):
    """Accept only the measured mathematical rejection for one exact source."""
    if source not in NEGATIVE_PROFILES:
        raise ValueError("unqualified RH negative control: " + source)
    profile = NEGATIVE_PROFILES[source]
    if timed_out is not False or type(returncode) is not int or returncode != 1:
        raise ValueError("negative control did not exit with compiler rejection")
    if type(stdout) is not str or type(stderr) is not str or stderr != "":
        raise ValueError("negative control has stderr or invalid stdout")
    if type(source_bytes) is not bytes:
        raise ValueError("negative control must use immutable source bytes")
    digest = hashlib.sha256(source_bytes).hexdigest()
    if digest != profile["source_sha256"]:
        raise ValueError("negative control source differs from its qualification")
    lines = [line for line in stdout.splitlines() if line.strip()]
    if len(lines) != 1:
        raise ValueError("negative control must emit one diagnostic only")
    try:
        diagnostic = json.loads(lines[0], object_pairs_hook=_unique_object, parse_constant=_reject_constant)
    except (ValueError, TypeError) as error:
        raise ValueError("negative control did not emit a unique JSON diagnostic") from error
    if not isinstance(diagnostic, dict):
        raise ValueError("negative diagnostic is not an object")
    if set(diagnostic) != {"caption", "data", "endPos", "fileName", "isSilent", "keepFullRange", "kind", "pos", "severity"}:
        raise ValueError("negative diagnostic has missing or unexpected fields")
    if diagnostic.get("severity") != "error" or diagnostic.get("isSilent") is not False:
        raise ValueError("negative diagnostic is not a visible compiler error")
    if diagnostic.get("fileName") != str(Path(source_path).absolute()):
        raise ValueError("negative diagnostic belongs to another source")
    for field in ("kind", "caption", "data", "pos", "endPos", "keepFullRange"):
        if (field not in diagnostic or type(diagnostic[field]) is not type(profile[field])
                or diagnostic[field] != profile[field]):
            raise ValueError("negative diagnostic differs at " + field)
    # bool and int compare equally in Python; require actual position integers.
    span = _source_span(source_bytes, diagnostic["pos"], diagnostic["endPos"])
    if span != profile["source_span"]:
        raise ValueError("negative diagnostic does not cover its qualified source span")
    return {"expected": "sole exact mathematical rejection",
            "source_sha256": digest, "diagnostic": diagnostic,
            "source_span": span, "goal": profile["data"],
            "stdout_sha256": hashlib.sha256(stdout.encode("utf-8")).hexdigest(),
            "stderr_sha256": hashlib.sha256(stderr.encode("utf-8")).hexdigest()}


def validate_positive_audit(stdout):
    """Reconcile the exact private/generated RH family from native output."""
    if type(stdout) is not str:
        raise ValueError("RH audit stdout is not text")
    rows = []
    counts = []
    for line in stdout.splitlines():
        if not line.strip():
            continue
        if line.startswith("RH_DECL::"):
            try:
                row = json.loads(line[len("RH_DECL::"):], object_pairs_hook=_unique_object,
                                 parse_constant=_reject_constant)
            except (ValueError, TypeError) as error:
                raise ValueError("invalid RH declaration record") from error
            if (not isinstance(row, dict) or set(row) != {"module", "name", "kind", "type", "axioms"}
                    or any(type(row[key]) is not str for key in ("module", "name", "kind", "type"))
                    or type(row["axioms"]) is not list
                    or any(type(axiom) is not str for axiom in row["axioms"])):
                raise ValueError("RH declaration fields differ from the qualified schema")
            if row["name"] in EXPECTED_DECLARATION_KINDS and row["kind"] != EXPECTED_DECLARATION_KINDS[row["name"]]:
                raise ValueError("RH declaration kind differs from qualification")
            if not set(row["axioms"]) <= {"propext", "Classical.choice", "Quot.sound"}:
                raise ValueError("RH declaration uses an unapproved axiom")
            rows.append(row)
        elif line.startswith("RH_COUNT::"):
            counts.append(line)
        else:
            raise ValueError("unrecognized RH audit diagnostic")
    if counts != ["RH_COUNT::39"] or len(rows) != 39:
        raise ValueError("RH audit must contain exactly one whole count record of39")
    names = [row["name"] for row in rows]
    if len(set(names)) != 39 or set(names) != set(EXPECTED_DECLARATION_OWNERS):
        raise ValueError("RH audit declaration family is incomplete, duplicated or unexpected")
    if any(EXPECTED_DECLARATION_OWNERS[row["name"]] != row["module"] for row in rows):
        raise ValueError("RH audit declaration ownership differs from qualification")
    return rows
