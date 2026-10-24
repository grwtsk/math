# Verification target: GRWTSK.Topology.MetricTopology.UpperLower.Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c22adc63de5354f1081f4b6effdbcb06f55d18c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c22adc63de5354f1081f4b6effdbcb06f55d18c`.

Source path: `GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.UpperLower` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Sequences` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isupperset-thickening--f0d3e754d6fc5324c6741e5e.md) | 48 | `result-track:f0d3e754d6fc5324c6741e5e2015ccd9de168806add4a303ff8119ed95b251e4` |
| 2 | `theorem` | [IsLowerSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/islowerset-thickening--cdc4fa1af95b3cbb448bd96a.md) | 54 | `result-track:cdc4fa1af95b3cbb448bd96ad02f780407750bb45c42c0ae3dfa6ce026b8bfa6` |
| 3 | `theorem` | [IsUpperSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isupperset-cthickening--bd5d2b0595abb4a44491962a.md) | 60 | `result-track:bd5d2b0595abb4a44491962a3221d8387a3664a27bb88976a3199d01bcf40b27` |
| 4 | `theorem` | [IsLowerSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/islowerset-cthickening--7a214af194b848d7e66d1065.md) | 66 | `result-track:7a214af194b848d7e66d10652a248cc5bd9a09c920d8b436cd6d627160d129a4` |
| 5 | `lemma` | [upperClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/upperclosure-interior-subset--33a3ad66b672c64852e212c0.md) | 71 | `result-track:33a3ad66b672c64852e212c01e3437964d2cb43866ac4a7639ee0432df4633e8` |
| 6 | `lemma` | [lowerClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/lowerclosure-interior-subset--d544bde5f11fc3617beb74ba.md) | 75 | `result-track:d544bde5f11fc3617beb74ba084447d6291508c0631363263555603dad56ecdf` |
| 7 | `theorem` | [IsUpperSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isupperset-mem-interior-of-forall-lt--6603e39f90369521de06b8d4.md) | 87 | `result-track:6603e39f90369521de06b8d4015a458afd4edf55666b2a9dbddbdfd25312a21a` |
| 8 | `theorem` | [IsLowerSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/islowerset-mem-interior-of-forall-lt--c765f227d8d96dbe8ce6c809.md) | 104 | `result-track:c765f227d8d96dbe8ce6c8098765b8d6d11dd6b439fabb7b86b5e33b8875af11` |
| 9 | `lemma` | [dist_inf_sup_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/dist-inf-sup-pi--f39e62e1f8dfcb84f0bb6a3b.md) | 128 | `result-track:f39e62e1f8dfcb84f0bb6a3b33cd80ac7bfabf98a900896edb66291fd439c762` |
| 10 | `lemma` | [dist_mono_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/dist-mono-left-pi--3738ced74111f76e9efcdfc1.md) | 133 | `result-track:3738ced74111f76e9efcdfc1b82fff343de1dbae6117efdd518750084520ac63` |
| 11 | `lemma` | [dist_mono_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/dist-mono-right-pi--765601f3242be119d72e2283.md) | 139 | `result-track:765601f3242be119d72e2283231fa0b40f65f9d8135da34fdbab23d9862ec75a` |
| 12 | `lemma` | [dist_anti_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/dist-anti-left-pi--ce563fc772c93c82ccfdbc67.md) | 142 | `result-track:ce563fc772c93c82ccfdbc67a7e9f1e863430741e2a6d9067272ffc01b0836c4` |
| 13 | `lemma` | [dist_anti_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/dist-anti-right-pi--dcf1d2c1733d7ee62d197555.md) | 148 | `result-track:dcf1d2c1733d7ee62d1975555cf2b6d2308121fcb3ebdd416f896a1406e6caee` |
| 14 | `lemma` | [dist_le_dist_of_le_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/dist-le-dist-of-le-pi--2c30016fad287ccfff98b746.md) | 151 | `result-track:2c30016fad287ccfff98b7466718d2770ff404e714a6c2e7075a6c579168ffe4` |
| 15 | `theorem` | [IsUpperSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isupperset-exists-subset-ball--10a0e8de846b3552a9aa2609.md) | 156 | `result-track:10a0e8de846b3552a9aa2609e16605fc374b142054b37bef3c20aeab999ca235` |
| 16 | `theorem` | [IsLowerSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/islowerset-exists-subset-ball--1161eb08ba343442209ff798.md) | 174 | `result-track:1161eb08ba343442209ff7983f9f8e24acd6c7a97fbe691a18aaad278a379021` |
| 17 | `lemma` | [IsClosed.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isclosed-upperclosure-pi--c8590d342cde58a1e814b1b0.md) | 205 | `result-track:c8590d342cde58a1e814b1b053ded3ca7af337170acddaa7129dabb097edb996` |
| 18 | `lemma` | [IsClosed.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isclosed-lowerclosure-pi--a674d2f157acc6139aa00316.md) | 216 | `result-track:a674d2f157acc6139aa0031617c9641de7fe9205441f83cd65acf1edf77320fb` |
| 19 | `lemma` | [IsClopen.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isclopen-upperclosure-pi--4e6d6ad77920acaec9509e75.md) | 228 | `result-track:4e6d6ad77920acaec9509e7591740e7c074aac63d47711041ade55633059e4d0` |
| 20 | `lemma` | [IsClopen.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/isclopen-lowerclosure-pi--03a5abe6112ea2d696ff63e9.md) | 231 | `result-track:03a5abe6112ea2d696ff63e9ee5b4220cc9fe5b6dbd0ba7391d196f45a82560e` |
| 21 | `lemma` | [closure_upperClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/closure-upperclosure-comm-pi--e2fd387ac9444170deb79d9d.md) | 234 | `result-track:e2fd387ac9444170deb79d9d80132f064c816ff13d34d9b6f265dbd6475444d3` |
| 22 | `lemma` | [closure_lowerClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/declarations/closure-lowerclosure-comm-pi--82cf66729c4168ab6e680e69.md) | 240 | `result-track:82cf66729c4168ab6e680e69abc19b15d88c6faddb1318c7050a5c123a776aba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
