# Verification target: Finite Field Round

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aabb02724b2ee7719df6e96174b79c29fcabbed5",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteFieldRound.lean/index.md) · [Full source](../../../../Combinatorics/FiniteFieldRound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aabb02724b2ee7719df6e96174b79c29fcabbed5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Avalanche` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Fintype` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digammaDenominator](../../../../Combinatorics/FiniteFieldRound.lean/declarations/digammadenominator.md) | 48 | `declaration-track:277eb8473405f83c01d15058f238dfb78dc8b586dac232a5e077103dab473ac4` |
| 2 | `def` | [finiteDigamma?](../../../../Combinatorics/FiniteFieldRound.lean/declarations/finitedigamma.md) | 52 | `declaration-track:80a6d74cfb02bd1b33c73c4a62dcde7a41fc217ae8d31d47c5430ce33acfbe31` |
| 3 | `theorem` | [digammaDenominator_eq_zero_of_mem](../../../../Combinatorics/FiniteFieldRound.lean/declarations/digammadenominator-eq-zero-of-mem.md) | 61 | `result-track:aa643b7ea29a924d4fc0a0761d4d93b690282d1051c04a389ade0508f22b46ae` |
| 4 | `theorem` | [finiteDigamma_none_of_mem](../../../../Combinatorics/FiniteFieldRound.lean/declarations/finitedigamma-none-of-mem.md) | 68 | `result-track:d13709ef0c50f7e71e5d1a9e3b1aefc5f960f00c02450be51d80f0895cb753dc` |
| 5 | `def` | [allNonzeroRoots](../../../../Combinatorics/FiniteFieldRound.lean/declarations/allnonzeroroots.md) | 80 | `declaration-track:09e88e0f6157800a1b5d211673c9487dc212544b118218b1911bb30312a3d2bd` |
| 6 | `theorem` | [finiteDigamma_allNonzero_none](../../../../Combinatorics/FiniteFieldRound.lean/declarations/finitedigamma-allnonzero-none.md) | 86 | `result-track:b77094fea3eed6746c2af486b6273259759dee0e55ce1b2c8413e2346cc0279b` |
| 7 | `theorem` | [powerMap_bijective](../../../../Combinatorics/FiniteFieldRound.lean/declarations/powermap-bijective.md) | 103 | `result-track:1a9db2129091f4798c37d49bb9524be337d1fee725eb25dd72eff37be8ead487` |
| 8 | `def` | [powerPermutation](../../../../Combinatorics/FiniteFieldRound.lean/declarations/powerpermutation.md) | 148 | `declaration-track:4a210072b42743c5cf8dee676d305d31027457390f0348de52977197de45772e` |
| 9 | `theorem` | [powerPermutation_apply](../../../../Combinatorics/FiniteFieldRound.lean/declarations/powerpermutation-apply.md) | 157 | `result-track:4b2bbc5afff31fa00c696009c6f003ba4423be7a7d11ff0d7a033192249c0f13` |
| 10 | `def` | [inversionPermutation](../../../../Combinatorics/FiniteFieldRound.lean/declarations/inversionpermutation.md) | 173 | `declaration-track:6430259ccfab2a70c5d26f9a2374d737561cb7ada079673ef897b18d257a39f5` |
| 11 | `theorem` | [inversionPermutation_apply](../../../../Combinatorics/FiniteFieldRound.lean/declarations/inversionpermutation-apply.md) | 180 | `result-track:fcc6d23546a8ad9c8243e0ad547eb18d606a3091e7575c723e1d2a959316960c` |
| 12 | `theorem` | [inversionPermutation_zero](../../../../Combinatorics/FiniteFieldRound.lean/declarations/inversionpermutation-zero.md) | 185 | `result-track:70dd67f727e21f0a87f9801768d75cb2bd028b9f2c9a236f1e1592b7d83db27d` |
| 13 | `theorem` | [inversionPermutation_involutive](../../../../Combinatorics/FiniteFieldRound.lean/declarations/inversionpermutation-involutive.md) | 190 | `result-track:d616b8dc49c802e3aeca5ef623860ff7c40201f906ec562a0b4860bf20678a5c` |
| 14 | `structure` | [FieldRound](../../../../Combinatorics/FiniteFieldRound.lean/declarations/fieldround.md) | 200 | `declaration-track:325faf4c42f173d034e7e171f92abfc90b01ab4c0b69985db1f0b282969a06c6` |
| 15 | `def` | [toEquiv](../../../../Combinatorics/FiniteFieldRound.lean/declarations/toequiv.md) | 211 | `declaration-track:8c707b04ab49bf10f3bf1cbb9a80cbf175b2b8abc009e41964da1c33e0bda304` |
| 16 | `def` | [run](../../../../Combinatorics/FiniteFieldRound.lean/declarations/run.md) | 216 | `declaration-track:cc3633356542c3ce4f4a5c30103d85cf8db72055206f02c5a90baec6fd100cbe` |
| 17 | `theorem` | [run_apply](../../../../Combinatorics/FiniteFieldRound.lean/declarations/run-apply.md) | 220 | `result-track:8fa2249ca88afe4687e04a39e18e6c04957b18dbcd8c114e5f10c0e29cde926c` |
| 18 | `theorem` | [run_bijective](../../../../Combinatorics/FiniteFieldRound.lean/declarations/run-bijective.md) | 226 | `result-track:ef2441423c31b67061c84f585b02bc92ebaf6d010741f66b9cbd329be5760288` |
| 19 | `def` | [inverse](../../../../Combinatorics/FiniteFieldRound.lean/declarations/inverse.md) | 231 | `declaration-track:342ea736d3e0c8ae0acc483694604fc1c642e945b69cc985a7fca6002437b6a5` |
| 20 | `theorem` | [inverse_apply](../../../../Combinatorics/FiniteFieldRound.lean/declarations/inverse-apply.md) | 237 | `result-track:daa4038f693e8b87d7017e2245a60293d9f23069e9273a2cdb15b94ccc9cc1ae` |
| 21 | `theorem` | [inverse_run](../../../../Combinatorics/FiniteFieldRound.lean/declarations/inverse-run.md) | 246 | `result-track:dc2aeae076d1a978b64a3285d28db7ac140c1f0bef09f5c6b7e963fea1c8fa0e` |
| 22 | `theorem` | [run_inverse](../../../../Combinatorics/FiniteFieldRound.lean/declarations/run-inverse.md) | 251 | `result-track:351fe34be81f11450c0f5d4d3200661e56a8fbfe8837e00a6e06af839234c123` |
| 23 | `def` | [ofPower](../../../../Combinatorics/FiniteFieldRound.lean/declarations/ofpower.md) | 257 | `declaration-track:2d4ff021dce791363e9c554677dccd5726eb6cc689b6a1c2e825a31cc7c60ac3` |
| 24 | `theorem` | [ofPower_bijective](../../../../Combinatorics/FiniteFieldRound.lean/declarations/ofpower-bijective.md) | 271 | `result-track:9338a853abce167e0209e7725e5382dff5a59e78f714624fc01962cbf6994224` |
| 25 | `def` | [transportToBits](../../../../Combinatorics/FiniteFieldRound.lean/declarations/transporttobits.md) | 286 | `declaration-track:28bfce2d88f0320e1eb3a6ceb618f491aeb4837f41866ba7b54fbb3a392104d8` |
| 26 | `theorem` | [transportToBits_bijective](../../../../Combinatorics/FiniteFieldRound.lean/declarations/transporttobits-bijective.md) | 294 | `result-track:a9000d07804df95180c211b1ed66ecdc459db27031897a2002c1bfbf5fe600ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd4b228358bed4f20a81966338186672ad53def229ce51147073b9a18e51e574 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variant358498cf08236d0da679eafa75f3e0562b8ba765b89ea56aab17684aaec99520.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
