# Verification target: Group Torsion Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fd3c601e163f9dc23cf732a3607455f125a13c8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Torsion/Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fd3c601e163f9dc23cf732a3607455f125a13c8`.

Source path: `GRWTSK/Algebra/GroupTheory/Torsion/Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Torsion/Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/instance.md) | 28 | `declaration-track:3018b1179ff32133413d7f2cd51d58e0aa23a8c94c8bd2751e9034a149c2aa00` |
| 2 | `instance` | [Subsingleton.to_isMulTorsionFree](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/subsingleton-to-ismultorsionfree.md) | 31 | `declaration-track:d1d812653d5fb814b95a74a5ca917a399689a875301a44a12b039ecd3306f5d3` |
| 3 | `lemma` | [pow_left_injective](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/pow-left-injective.md) | 37 | `result-track:2c661878bf601c8764d0dd2adb2e2fbd8bca6aed79f3466400a50b12839901ad` |
| 4 | `lemma` | [pow_left_inj](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/pow-left-inj.md) | 41 | `result-track:05f542c477219dae9974375a21f28f2941257356e3f0e760101e79fc574389e1` |
| 5 | `lemma` | [pow_eq_one_iff_left](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/pow-eq-one-iff-left.md) | 44 | `result-track:c767d9af16bdf2d0da6119f07e6ee65af75f693f539d25db2054a34d3ca38741` |
| 6 | `lemma` | [pow_eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/pow-eq-one-iff.md) | 49 | `result-track:a80950af441e3722514cee80b9e1d410a79409a57e7004bf1c156cfb264d9edb` |
| 7 | `lemma` | [pow_eq_one_iff_right](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/pow-eq-one-iff-right.md) | 53 | `result-track:0bb0ce563bb2fb6df2525558988983d2766310f6151b03fc276e0af4ad980a26` |
| 8 | `lemma` | [sq_eq_one](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/sq-eq-one.md) | 57 | `result-track:46aa0a5cc314cdb9c4a81d1ba623fd82aecd473784acf246b61db4682c1fafae` |
| 9 | `lemma` | [zpow_left_injective](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/zpow-left-injective.md) | 65 | `result-track:bd38d545716648732d10ab3248cda4553cd96cf57085917a400182f71a10f7c7` |
| 10 | `lemma` | [zpow_left_inj](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/zpow-left-inj.md) | 71 | `result-track:dd0fccdaf54d12c4bca5fb87c6b476e8e6b2c0bbf738b54f65b0b356657f009b` |
| 11 | `lemma` | [zpow_eq_zpow_iff'](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/zpow-eq-zpow-iff.md) | 77 | `result-track:a1e867d5e8875e94b5fe939abaf3f7aeb5be97a27a117ce00bb9909bc22d447c` |
| 12 | `lemma` | [IsMulTorsionFree.zpow_eq_one_iff_left](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/ismultorsionfree-zpow-eq-one-iff-left.md) | 80 | `result-track:facc2796ef9fe0499e4fbfe58b74cf33af312a1f9f6908681ea32af0f4b0e5bc` |
| 13 | `lemma` | [IsMulTorsionFree.zpow_eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/ismultorsionfree-zpow-eq-one-iff.md) | 85 | `result-track:7d0de96069e66e249cfb4272e00822fa510d8222fd0912b2c9f6e6fc6f143c9d` |
| 14 | `lemma` | [IsMulTorsionFree.zpow_eq_one_iff_right](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/ismultorsionfree-zpow-eq-one-iff-right.md) | 89 | `result-track:b9becdcf2f9757be30f659a931a218e1362ead9e0aea1ad4c074594cdd21ae05` |
| 15 | `lemma` | [self_eq_inv](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/self-eq-inv.md) | 91 | `result-track:7e7912a7cfdb5d5b2dce899d0b3b2f7a49eaa5353c58a997a27443b0ad5da29a` |
| 16 | `lemma` | [inv_eq_self](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/inv-eq-self.md) | 92 | `result-track:9b5ba87c4fd57a5c2b90d091f0d9d8841dbb5401abeab98e4d698e0a9fc4258d` |
| 17 | `lemma` | [self_ne_inv](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/self-ne-inv.md) | 93 | `result-track:0dd523483b955f1c4bed8f86849f2c7eba2f0def1a6ec2d176de5c8630b0ef0c` |
| 18 | `lemma` | [inv_ne_self](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/inv-ne-self.md) | 94 | `result-track:ed92177a8822b4bc1734df7adf2bd25078eddd43b7db8fd7377dba24e82f0edf` |
| 19 | `lemma` | [isSelfInv_iff_eq_one](../../../../GroupTheoryAndGeneralizations/GroupTorsionPublic.lean/declarations/isselfinv-iff-eq-one.md) | 96 | `result-track:b2d0ed9483422f710bcce0c19d81c6cac2059874aca951c3921772f4a5e05a23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56a27288730bf31c73e0d5ff2b47365cd79b85c6ab7230eeb7342a115fbabfe4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Torsion/Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Torsion/Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
