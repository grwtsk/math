# Verification target: Group With Zero Commute Inverse Pow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80b2f7ad9e7f8c0ce15de0184836a9e9f9d7788d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variantc615c9a3998dbe898c4d853269ee1df12f5ce62a2220319c2ae65b4314d1ad6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80b2f7ad9e7f8c0ce15de0184836a9e9f9d7788d`.

Source path: `GRWTSK/Algebra/Commute/Variantc615c9a3998dbe898c4d853269ee1df12f5ce62a2220319c2ae65b4314d1ad6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variantc615c9a3998dbe898c4d853269ee1df12f5ce62a2220319c2ae65b4314d1ad6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Semiconj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_inverse_rev'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/mul-inverse-rev.md) | 22 | `result-track:d72db7059866640347db6960e25bd88c600d6df5f0baa0bd48234da5fd8b44c0` |
| 2 | `theorem` | [mul_inverse_rev](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/mul-inverse-rev-source-edition-2.md) | 31 | `result-track:f21f393f8e7b36a33398095468a9f032142985fdc43d6838479dde5c356dd4da` |
| 3 | `lemma` | [inverse_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/inverse-pow.md) | 35 | `result-track:feb849e065feaccb360e32df400056e539114df7cdd011a746575cf8b44aa23d` |
| 4 | `lemma` | [inverse_pow_mul_eq_iff_eq_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/inverse-pow-mul-eq-iff-eq-mul.md) | 41 | `result-track:64dc4d4b07576e0d8aa605fba07ba785f816bd4b76daed13d5d6e60c8c156933` |
| 5 | `theorem` | [Commute.ringInverse_ringInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/commute-ringinverse-ringinverse.md) | 47 | `result-track:650dc7a0aec3eb22c133b8945b40047dfd5046f8b6dcdfbc244285759281f1b7` |
| 6 | `theorem` | [zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/zero-right.md) | 58 | `result-track:2ae44b6444e948ab32b3ecedadc6349cf2426efa311c2ee863e773d68e286b07` |
| 7 | `theorem` | [zero_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/zero-left.md) | 62 | `result-track:7991dcd289b5a1ecfbe9a2a18bbf68dffe0a70447b2373e99f63248b99262329` |
| 8 | `theorem` | [inv_left_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/inv-left-iff.md) | 68 | `result-track:1f30177864a000a76ccaf594b2e84f80f07c728659a36c2e0c03f948cd14767e` |
| 9 | `theorem` | [inv_left₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/inv-left.md) | 71 | `result-track:41df4b97d0628eb805a7db3ff68d3892031c11848eb94ab515f2e2adf9add22e` |
| 10 | `theorem` | [inv_right_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/inv-right-iff.md) | 75 | `result-track:320788b3ce9ce7ddae7c213e33211b73fbbff8f7617beea5955d2b6adad59c00` |
| 11 | `theorem` | [inv_right₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/inv-right.md) | 78 | `result-track:a9753e84e49328a6b1e783aac6725e637d93abd09ed3ccdffa41d096e20756db` |
| 12 | `theorem` | [div_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/div-right.md) | 82 | `result-track:6a9664d15384997de83bfd86334a92ccb1d98629e8a55d84060c204fdef72018` |
| 13 | `theorem` | [div_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/div-left.md) | 86 | `result-track:18b2d6e9f3fbbc593b2627a25d1fd81d523f237966bdf0d57c518c6f17000e75` |
| 14 | `theorem` | [pow_inv_comm₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteInversePow.lean/declarations/pow-inv-comm.md) | 95 | `result-track:2cf88ad2dce7112122990ce093b8dd239b54d2d16f6cf252314c219faf369db6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=839de60c2e6456ab83e1378ccc59e4adf7b5d1872e0ec6d11772c14fa538ffad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Commute/Variantc615c9a3998dbe898c4d853269ee1df12f5ce62a2220319c2ae65b4314d1ad6e.lean","GRWTSK/_verification/specifications/Algebra/Commute/Variantc615c9a3998dbe898c4d853269ee1df12f5ce62a2220319c2ae65b4314d1ad6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
