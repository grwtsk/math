# Verification target: GRWTSK.Topology.GeneralTopology.TopCatAdjunction.Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27ce1c170de994743e5312b01a4b727da5ab8420",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27ce1c170de994743e5312b01a4b727da5ab8420`.

Source path: `GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Light.TopComparison` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Sequential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Sequence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/coinducingcoprod--5b5aa42dab5e5213a9010fb2.md) | 30 | `declaration-track:5b5aa42dab5e5213a9010fb2c88757222176e0920e1c0c0fa3505dd5858cf83a` |
| 2 | `instance` | [underlyingTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/underlyingtopologicalspace--20f75b00fbc722e6e94f984e.md) | 38 | `declaration-track:20f75b00fbc722e6e94f984ec760dd2ead864fb02e81d72376699dc99879808f` |
| 3 | `abbrev` | [toTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/totopcat--8c3cec0ce9b4e5274772eef2.md) | 43 | `declaration-track:8c3cec0ce9b4e5274772eef2b4edf83429efad31a9af2c4772f68c3116a4de8c` |
| 4 | `lemma` | [continuous_coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/continuous-coinducingcoprod--c1c28ad77be534ee26ced55f.md) | 45 | `result-track:c1c28ad77be534ee26ced55f80830afe773d17eb384772aa876ebab9c6195ea5` |
| 5 | `def` | [toTopCatMap](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/totopcatmap--6b0e52455813ba694537ee77.md) | 57 | `declaration-track:6b0e52455813ba694537ee77b2031ffa889b2f4c8147c810141b18ba84b1ab45` |
| 6 | `def` | [_root_.lightCondSetToTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/root-lightcondsettotopcat--1dc3e9b2bbc0d4d219cf003e.md) | 71 | `declaration-track:1dc3e9b2bbc0d4d219cf003eb6b97b790d15a11b658d9b59d9c61516abd70c5a` |
| 7 | `def` | [topCatAdjunctionCounit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/topcatadjunctioncounit--22b98195c4f4618135074724.md) | 76 | `declaration-track:22b98195c4f46181350747242b8afc781e1b85e15b835dd94960e95dc01a4723` |
| 8 | `def` | [topCatAdjunctionCounitEquiv](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/topcatadjunctioncounitequiv--d666cd07fe5192b8eee1697c.md) | 86 | `declaration-track:d666cd07fe5192b8eee1697cf66321d38f12675750a1404d07acb51fc7c6d2fc` |
| 9 | `lemma` | [topCatAdjunctionCounit_bijective](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/topcatadjunctioncounit-bijective--f02516283f275514efa25f04.md) | 92 | `result-track:f02516283f275514efa25f04529085251f8e38b265ca9858e468e022ef0e661d` |
| 10 | `def` | [topCatAdjunctionUnit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/topcatadjunctionunit--22e6792a90945ea8e6080f24.md) | 98 | `declaration-track:22e6792a90945ea8e6080f245908abbc5725e1158de87fd9d18f83d61d8dbaa9` |
| 11 | `def` | [topCatAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/topcatadjunction--df8e30d831b4f81884b76b5b.md) | 114 | `declaration-track:df8e30d831b4f81884b76b5b4f701185e517008c66110e529a6e48721840cad9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/instance--80ad3642640ad5da51ee591a.md) | 122 | `declaration-track:80ad3642640ad5da51ee591a9907ae345b83a4271d2ed3c17e8b2edaba758279` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/instance--9c074ce7cdfb86e001349f02.md) | 126 | `declaration-track:9c074ce7cdfb86e001349f024d59703c670de0d3e03a3647f725b22896e70f8b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/instance--46623eb5bd0f8d0b24bba6bf.md) | 130 | `declaration-track:46623eb5bd0f8d0b24bba6bf1b7a8d3f2985874c7d0543eeed9201488a13a15e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/instance--434bf61e3bd50c4cbd90ca50.md) | 133 | `declaration-track:434bf61e3bd50c4cbd90ca50c60edc67013410420003234ad16c1266af09eb7c` |
| 16 | `def` | [lightCondSetToSequential](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/lightcondsettosequential--7f7a107240889e76aa539155.md) | 137 | `declaration-track:7f7a107240889e76aa5391551879afbfc4008960bfd4494caaaa6209df62e5dc` |
| 17 | `def` | [sequentialToLightCondSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/sequentialtolightcondset--4106fb403a3df172d2e9eed9.md) | 144 | `declaration-track:4106fb403a3df172d2e9eed9ddf6c89b1f669bd67daf95432dcaeb59eca5c4e1` |
| 18 | `def` | [sequentialAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/sequentialadjunction--633b83787b17f4271b133988.md) | 152 | `declaration-track:633b83787b17f4271b13398899fc2d5f9f18cec3d505f28115f320973b57557e` |
| 19 | `def` | [sequentialAdjunctionHomeo](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/sequentialadjunctionhomeo--e0c503bc70ecf516bb5884f9.md) | 165 | `declaration-track:e0c503bc70ecf516bb5884f9460ba6e401147f4ba596dcfcb9f1fe7b33f0d38d` |
| 20 | `def` | [sequentialAdjunctionCounitIso](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/sequentialadjunctioncounitiso--87699c688008e528eed24583.md) | 186 | `declaration-track:87699c688008e528eed24583931926b944c2eaeca9b6ffaeabf8ad4ea7db5972` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/instance--475f2dbf2c739f7853249936.md) | 190 | `declaration-track:475f2dbf2c739f78532499362e65db40cf09c6378aba5d24293ac45dddf439a3` |
| 22 | `def` | [fullyFaithfulSequentialToLightCondSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lean/declarations/fullyfaithfulsequentialtolightcondset--9d915b4a252c14d7219cc430.md) | 202 | `declaration-track:9d915b4a252c14d7219cc430d128f0235586438478dabbb7af877421ecf35f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
