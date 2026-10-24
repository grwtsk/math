# Verification target: GRWTSK.Topology.GeneralTopology.TopCatAdjunction.Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a8cec319605e53783c43e01d50cd5b893844f6b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a8cec319605e53783c43e01d50cd5b893844f6b`.

Source path: `GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.TopComparison` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompactlyGenerated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CondensedSet.coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/condensedset-coinducingcoprod--45240a33ffcb81fd5abbcfd9.md) | 35 | `declaration-track:45240a33ffcb81fd5abbcfd9e3c607f1c1db6f4bf2ff415d1393f0c5073b4577` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/instance--75ed54bc76cc192fbadbcdce.md) | 42 | `declaration-track:75ed54bc76cc192fbadbcdce14eb01f218a112c05bf7adef26e36aa224514098` |
| 3 | `abbrev` | [CondensedSet.toTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/condensedset-totopcat--ed9dbd488089d49a503355cb.md) | 46 | `declaration-track:ed9dbd488089d49a503355cb11819c724ee84d21efdf39b32212d752009f03e6` |
| 4 | `lemma` | [continuous_coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/continuous-coinducingcoprod--7c539f978ab92d35c37355ec.md) | 50 | `result-track:7c539f978ab92d35c37355ec8303f65bb946bbb744498e26b8cf432fb010a737` |
| 5 | `def` | [toTopCatMap](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/totopcatmap--fbe4fe76fbc0ff37e0d99bd4.md) | 62 | `declaration-track:fbe4fe76fbc0ff37e0d99bd40ffbc43741010eb001460c070ee7ff017c913ec5` |
| 6 | `def` | [condensedSetToTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/condensedsettotopcat--8e3cee666c50cba04f3aac5c.md) | 79 | `declaration-track:8e3cee666c50cba04f3aac5cc0230e56a289eae3e1ee9b6a82586a64b015826f` |
| 7 | `def` | [topCatAdjunctionCounit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/topcatadjunctioncounit--41d3f0028c256baef0ff3d5a.md) | 86 | `declaration-track:41d3f0028c256baef0ff3d5a5596ac0902517def1dd38a1123a75407e02776bf` |
| 8 | `lemma` | [topCatAdjunctionCounit_hom_apply](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/topcatadjunctioncounit-hom-apply--d7574006b2d6542a23318080.md) | 94 | `result-track:d7574006b2d6542a23318080c40081737eb554f7aa8e2615ce5a040cc91daef2` |
| 9 | `def` | [topCatAdjunctionCounitEquiv](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/topcatadjunctioncounitequiv--82b3d880c16f8f936a09380c.md) | 104 | `declaration-track:82b3d880c16f8f936a09380ceaeeae58e052fae39aee217f955e069ef95cfdf6` |
| 10 | `lemma` | [topCatAdjunctionCounit_bijective](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/topcatadjunctioncounit-bijective--74a1c06300c1d29f1cbb00c4.md) | 111 | `result-track:74a1c06300c1d29f1cbb00c427ec5fd33a75a17308d81fb1e260f67e696e7c65` |
| 11 | `def` | [topCatAdjunctionUnit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/topcatadjunctionunit--692009fcee8d501d14a9e096.md) | 117 | `declaration-track:692009fcee8d501d14a9e0963348b540b8cdc1c1b459baf8b7c1dc414788f085` |
| 12 | `def` | [topCatAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/topcatadjunction--1e454081434248c1e9edbd8a.md) | 134 | `declaration-track:1e454081434248c1e9edbd8a13d9673984b972734c23fc6282266ee67b0d2df2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/instance--5337eda69f788e10d4017709.md) | 142 | `declaration-track:5337eda69f788e10d40177090cc7af3d0f679c2ad9022347027bc9c4ac03e94e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/instance--8009e705707dcfcc63749019.md) | 146 | `declaration-track:8009e705707dcfcc6374901945b5647e5ff20b1abb9a70ea248762e1c603120c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/instance--d5eacfa2bd124f95ecb7396d.md) | 150 | `declaration-track:d5eacfa2bd124f95ecb7396d47a3786db54e2280b3b58b6b613fc283f641937c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/instance--e7731d8943b4c2e4f1463c78.md) | 156 | `declaration-track:e7731d8943b4c2e4f1463c78e2c1b688990b556dda0f5859826ff93e77429421` |
| 17 | `def` | [condensedSetToCompactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/condensedsettocompactlygenerated--084b2fb0b2d7f824875e4a9e.md) | 161 | `declaration-track:084b2fb0b2d7f824875e4a9ea15fa5cc7632fc0e42cb57f26794943b72649cf1` |
| 18 | `def` | [compactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/compactlygeneratedtocondensedset--e6bf6f11512274460dece978.md) | 168 | `declaration-track:e6bf6f11512274460dece9782e3d8d1ae8710f3b50421cb913e2fc1c39cb71a9` |
| 19 | `def` | [compactlyGeneratedAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/compactlygeneratedadjunction--9b68d57a02a91d92278f29f2.md) | 177 | `declaration-track:9b68d57a02a91d92278f29f20c8d67376897b6887bdadb46799c90067313c50e` |
| 20 | `def` | [compactlyGeneratedAdjunctionCounitHomeo](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/compactlygeneratedadjunctioncounithomeo--fc9601c034266e13be09d5e1.md) | 187 | `declaration-track:fc9601c034266e13be09d5e13f508ae34eb90e8c10977775f679110837fd0602` |
| 21 | `def` | [compactlyGeneratedAdjunctionCounitIso](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/compactlygeneratedadjunctioncounitiso--fbdbf5024ba22209f0545f72.md) | 200 | `declaration-track:fbdbf5024ba22209f0545f729f2a0665ad158417171675066f227d26c3fba840` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/instance--3973fc39f27b41304ff82e65.md) | 204 | `declaration-track:3973fc39f27b41304ff82e65764a29ace21b64bf0c5239f30682692da1440867` |
| 23 | `def` | [fullyFaithfulCompactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/declarations/fullyfaithfulcompactlygeneratedtocondensedset--43fab7e0f2288e1738676f73.md) | 213 | `declaration-track:43fab7e0f2288e1738676f73c3bd4f526f756f4d109be92896a6e3c1bd863160` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
