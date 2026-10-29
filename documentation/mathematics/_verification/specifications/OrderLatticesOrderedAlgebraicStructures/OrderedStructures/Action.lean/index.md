# Verification target: Action

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b154ca9ce012431cdd2ef3fd76bf1d7925c86f64",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Action/Variant975af0547612cf82ce1308e44c5cba352b273e805c21818f16eb2f7dbd1949ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b154ca9ce012431cdd2ef3fd76bf1d7925c86f64`.

Source path: `GRWTSK/Algebra/GroupTheory/Action/Variant975af0547612cf82ce1308e44c5cba352b273e805c21818f16eb2f7dbd1949ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Action/Variant975af0547612cf82ce1308e44c5cba352b273e805c21818f16eb2f7dbd1949ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/declarations/smul-mono-right.md) | 21 | `result-track:c596ebb6c9ef65c0b0d24a9eb79862d18767b3d22e655e7ca2f316c962d0aac5` |
| 2 | `theorem` | [smul_le_smul_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/declarations/smul-le-smul-left.md) | 27 | `result-track:f58c5b3941db7d638c19b3c5ebf722620d01580d4858c99c00f52319aaf47666` |
| 3 | `theorem` | [smul_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/declarations/smul-inf-le.md) | 32 | `result-track:f0af0c08f79f3d7664ecbc47552ebbb985bdb4a2253316653cfc9030a38e9205` |
| 4 | `theorem` | [smul_iInf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/declarations/smul-iinf-le.md) | 36 | `result-track:bb08af183ba30d0eb0318c41630e13b4b0005a645c0dbbc1f2b4943aaa5859e1` |
| 5 | `theorem` | [smul_strictMono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/declarations/smul-strictmono-right.md) | 41 | `result-track:4c61fd92f4555178bc82733005db13e728fa019a5d9381c1899e95c6f10b908e` |
| 6 | `lemma` | [le_pow_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/declarations/le-pow-smul.md) | 45 | `result-track:1978853514feffaccd1a70a212c76343e71a9650cef0e51fb9233bebac128256` |
| 7 | `lemma` | [pow_smul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Action.lean/declarations/pow-smul-le.md) | 54 | `result-track:879759bb0dfe01168a57d2611dc6276879e06995cf727bcd45c567c8b4ca699d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c878ffa60e758fac0d20463d5a1cc8a6009d5c8e0b1f6dd68c51eb868faf43f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Action/Variant975af0547612cf82ce1308e44c5cba352b273e805c21818f16eb2f7dbd1949ec.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Action/Variant975af0547612cf82ce1308e44c5cba352b273e805c21818f16eb2f7dbd1949ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
