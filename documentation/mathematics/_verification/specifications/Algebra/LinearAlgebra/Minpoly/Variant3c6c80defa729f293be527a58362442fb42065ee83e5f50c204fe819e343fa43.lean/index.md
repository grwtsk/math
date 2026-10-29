# Verification target: GRWTSK.Algebra.LinearAlgebra.Minpoly.Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36be7d1df4ed75f68565f99ee37cc115a3bb397f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36be7d1df4ed75f68565f99ee37cc115a3bb397f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [minpoly_toLin'](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/declarations/minpoly-tolin--461c662264c20b7e6504b3fa.md) | 40 | `result-track:461c662264c20b7e6504b3fa50eca9f275b05cc725bd2f85615e11cb66334c88` |
| 2 | `theorem` | [minpoly_toLin](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/declarations/minpoly-tolin--2757dbf9139b6dafca401188.md) | 45 | `result-track:2757dbf9139b6dafca401188bfc83389304a8e88035ee75eb969b996816bf87e` |
| 3 | `theorem` | [isIntegral](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/declarations/isintegral--f80772941377b319546ffabf.md) | 50 | `result-track:f80772941377b319546ffabf06cb0626ba9d413430fbc4300d5453d60a2ab68a` |
| 4 | `theorem` | [minpoly_dvd_charpoly](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/declarations/minpoly-dvd-charpoly--f92d021832b568d08a97cd2d.md) | 54 | `result-track:f92d021832b568d08a97cd2d0462a8418a73b3ca36dc5485bb19fd824b788f43` |
| 5 | `theorem` | [minpoly_toMatrix'](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/declarations/minpoly-tomatrix--91a88fa280e0d88fb11225b2.md) | 63 | `result-track:91a88fa280e0d88fb11225b285361ed7a25c1aa842137fce2c602f21f88754a1` |
| 6 | `theorem` | [minpoly_toMatrix](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/declarations/minpoly-tomatrix--27bf519b717ab9559fbd2370.md) | 68 | `result-track:27bf519b717ab9559fbd23703d6e072d4155fd7383d11b5f9aa4f4c7212483b0` |
| 7 | `theorem` | [charpoly_leftMulMatrix](../../../../../../Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean/declarations/charpoly-leftmulmatrix--62068830f1653d8b717c730c.md) | 85 | `result-track:62068830f1653d8b717c730c67659ade15d26949bb2fe81b549f5121de17087d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e04e6470d326b5e0f80c29011ae43a504f42b7cd538f5b7da8cb813b04faadea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Minpoly/Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
