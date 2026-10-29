# Verification target: Comma Arrow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bee5cbc3e9f2c9fd5bf30701a0bf239d992ea70b",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bee5cbc3e9f2c9fd5bf30701a0bf239d992ea70b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow.md) | 42 | `declaration-track:2784aa5765679d28b4a5b6e216e38617c4597f4ae5b340bdc0f2a15c1641f66f` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/instance.md) | 47 | `declaration-track:46fe1e4159b02c7e203c4a7ae339e389c8319ca640f4e1be56c82c4e59bf2721` |
| 3 | `instance` | [Arrow.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow-inhabited.md) | 50 | `declaration-track:1a311b3ee0ec8249925ac833fcdbfae436889064907d682e9988659363a9403f` |
| 4 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/hom-ext.md) | 58 | `result-track:829bf2cd9c16e1a2c0472c7262e3cce8f2e1a24f33ab737eb7be0051abb84f1a` |
| 5 | `theorem` | [id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/id-left.md) | 63 | `result-track:70090845ca3dc272af495706c18752b3daccee11b9962d6f56d256360803b71b` |
| 6 | `theorem` | [id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/id-right.md) | 67 | `result-track:a1ed021fbecd379356c02adfb94abe4039ea33fad1f552aab9f4f0b39f43bd38` |
| 7 | `theorem` | [comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/comp-left.md) | 72 | `result-track:695f1bfd7bca2c46ff20a080a0ea77c453bd1d825eaef6c7c32185869a3aeaad` |
| 8 | `theorem` | [comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/comp-right.md) | 77 | `result-track:7496a271e8dca7dfa0924fbab756e992437a26c2b7130d81ca7e8fe1bd9f57f0` |
| 9 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/mk.md) | 82 | `declaration-track:3cc51cda41916ad8f2817f61856e2c6472850a2e77b827873f08fefac8cd5eef` |
| 10 | `theorem` | [mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/mk-eq.md) | 88 | `result-track:fc184ac5093aad3f90c7e97a3067aeb4841b50128362fbfea4f9d81f24b89365` |
| 11 | `theorem` | [mk_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/mk-injective.md) | 92 | `result-track:b9b5c1bff9459774a42aa3fab8169a5135729b3a66dde4d57f13d32463a7eacc` |
| 12 | `theorem` | [mk_inj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/mk-inj.md) | 97 | `result-track:ff637c55944244a0c837d311e52615cf140376400221aefbbebf73d98b7e698f` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:a0e6a08253d4a25ce7828f68fe20d3742d9e8dbcef5f3ef5706e6754b2b4f661` |
| 14 | `lemma` | [mk_eq_mk_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/mk-eq-mk-iff.md) | 103 | `result-track:e6f2f3c4d2523ba2450110c19dc7e3ae7bded2b1cd179b8fbfbddc3f2a2a3705` |
| 15 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/ext.md) | 117 | `result-track:8283c16742ad278f5b6f8d9a6dcc9871048025edb59dc5de8caf3d2ee4a4ee53` |
| 16 | `lemma` | [arrow_mk_comp_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow-mk-comp-eqtohom.md) | 123 | `result-track:30c965e671df13e046c85e62fea48a0c63b0b3746c9431852ae433fff0392fa8` |
| 17 | `lemma` | [arrow_mk_eqToHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow-mk-eqtohom-comp.md) | 128 | `result-track:56a84e3390c77df572b27a98091c89670117f7aeb989cf5a1fb99c214ddbd938` |
| 18 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/hommk.md) | 135 | `declaration-track:57da2d55364b5c62bff648b6b9f77b836e3b43597bca428c9bb08004b91e4bc6` |
| 19 | `def` | [homMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/hommk-source-edition-2.md) | 143 | `declaration-track:6886e34516757a18e71bbe6550858f7160177864f13e8165cd158b9d1f3551d1` |
| 20 | `theorem` | [w_mk_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/w-mk-right.md) | 152 | `result-track:2fe3b23060731e20a3be02d7424b4f61f0585a2e4008df7c00801bb1548e639a` |
| 21 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/w.md) | 157 | `result-track:1d9d1cdd511bbb76b62ba5fe5c2c787e63f15238dfcf9c763548643379bda6a8` |
| 22 | `theorem` | [isIso_of_isIso_left_of_isIso_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isiso-of-isiso-left-of-isiso-right.md) | 160 | `result-track:a548387442c207b8fee58504ac38af5f5a28a91cf138984ead505d0d6ba7912f` |
| 23 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isomk-source-edition-2.md) | 171 | `declaration-track:a7d53184592a9fcf175bf77c76176a21269cc39f14523175bb8ce114aff265e1` |
| 24 | `abbrev` | [isoMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isomk.md) | 177 | `declaration-track:0c35b67b63edb9fe5d5434c6bd77c9607150434a34cfc9bdb4fd91f92b04d840` |
| 25 | `theorem` | [hom.congr_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/hom-congr-left.md) | 181 | `result-track:579d2769be66d0ee064a0c26db3f672e44d2864ad2527f5ba80bfbeb872dc167` |
| 26 | `theorem` | [hom.congr_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/hom-congr-right.md) | 184 | `result-track:89199279b04bda6bfc777d60332db6c56d0af5880a5cc389f80844a6d4161cf5` |
| 27 | `theorem` | [iso_w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/iso-w-source-edition-2.md) | 187 | `result-track:4f91e99f308f5bf48cbcaa6c5ff05758207ebd5b0fc1d9f890ba2dceb6fc33a3` |
| 28 | `theorem` | [iso_w'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/iso-w.md) | 192 | `result-track:103853a87a40899599223a6cac54bf8e289a0fdc586520a1a1b835ca31ae6e88` |
| 29 | `instance` | [isIso_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isiso-left.md) | 200 | `declaration-track:d50ac4b742ede287a9ce1b75e7b26866e981e60a14d04faea553877a9d7c197c` |
| 30 | `instance` | [isIso_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isiso-right.md) | 207 | `declaration-track:a020e7facfdea1af9e9bd747ffb252cd0588ce37de2cf8f9334e62388c905eda` |
| 31 | `lemma` | [isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isiso-of-isiso.md) | 214 | `result-track:0b11b50e3dc6839521ae0aa2159d922263a4fa0c7f4fb569fc3114dd5996e710` |
| 32 | `lemma` | [isIso_hom_iff_isIso_hom_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isiso-hom-iff-isiso-hom-of-isiso.md) | 219 | `result-track:2a2b4b913a26ad87f3118e07de436e30502735f16b0e22c79f843da24d368fc9` |
| 33 | `lemma` | [isIso_iff_isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isiso-iff-isiso-of-isiso.md) | 223 | `result-track:313204c6b334ccd14be487d9ecbfda51983e0052d9586877976092e2030eb7d9` |
| 34 | `lemma` | [isIso_hom_iff_isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isiso-hom-iff-isiso-of-isiso.md) | 227 | `result-track:937d1a086fbaba03c40ed4f53b4fd837cd947e83d1111c485c4598b78249e2c4` |
| 35 | `theorem` | [inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/inv-left.md) | 232 | `result-track:9e4ad33b55d76b3620d2d29956a31e4a2af4d21c7a0828c867e3ce588839c2a3` |
| 36 | `theorem` | [inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/inv-right.md) | 236 | `result-track:040b2cb831c874c32f06d456986a5466f718b0c0983d2f88ffdf756f1b57a525` |
| 37 | `theorem` | [left_hom_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/left-hom-inv-right.md) | 239 | `result-track:3d0ba6f7abbf8453b77afeeba1f793a39f774cd4642519dc1152aeb5e2577e32` |
| 38 | `theorem` | [inv_left_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/inv-left-hom-right.md) | 242 | `result-track:c1a3001cc030ec661aa8b6fd23da17818931244db0fd796d654c8ca3799cfb94` |
| 39 | `instance` | [mono_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/mono-left.md) | 245 | `declaration-track:82c67a0d4f4629af7e5aa6dde1d41414b6f66967cd95b37de5fe045aff0504da` |
| 40 | `instance` | [epi_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/epi-right.md) | 260 | `declaration-track:573576a7e825f19f69a36f53d97ddee1256fda0962ba381a2a87098c36088a67` |
| 41 | `lemma` | [hom_inv_id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/hom-inv-id-left.md) | 273 | `result-track:b6ff44ab47148ee9fcd8a5385928afda53f940fb5a0f94525e4bbec0a6b80b9f` |
| 42 | `lemma` | [inv_hom_id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/inv-hom-id-left.md) | 277 | `result-track:f49e3cb81e47e7bcf36cfc034f931a3821e61f798bb0a23c51b56ffb9d154975` |
| 43 | `lemma` | [hom_inv_id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/hom-inv-id-right.md) | 281 | `result-track:3c713b52d08de5bc48a5206407edd3e1ec1baea544568a55cffe942e384340b9` |
| 44 | `lemma` | [inv_hom_id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/inv-hom-id-right.md) | 285 | `result-track:cd038abe37e46e65af5a087b36fbeae092d91598c3791e172559050c3705cd42` |
| 45 | `theorem` | [square_to_iso_invert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/square-to-iso-invert.md) | 293 | `result-track:bbc44f966554efa92687307deb3977f71a3d1a20a996fb7d9fa2ef26e8dcade4` |
| 46 | `theorem` | [square_from_iso_invert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/square-from-iso-invert.md) | 299 | `result-track:8f4b8efd4637a10d47df9d1f8d0ea77cd378b081091f737b179a1ea7dd92aae8` |
| 47 | `def` | [squareToSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/squaretosnd.md) | 313 | `declaration-track:58d788b4d3d139dfb4133b659b534231de2e85748c8f521c54c32d91abe20c9e` |
| 48 | `def` | [leftFunc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/leftfunc.md) | 320 | `declaration-track:545bce5f1e5e4df408da5c428cf8c2e9661c8fb612f4a89c68ef64aa25795d93` |
| 49 | `def` | [rightFunc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/rightfunc.md) | 325 | `declaration-track:e2205af779465161cb61b0566c18426bc614dea468759b41ba66c690556de97b` |
| 50 | `def` | [leftToRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/lefttoright.md) | 330 | `declaration-track:19a9f7b01d4fc396b9c7d40f2587cc0f3eff3e0805a05f95e34b37280030789b` |
| 51 | `def` | [mapArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/maparrow.md) | 342 | `declaration-track:ec9dc39347da662df5d4508338eb1a9e9bdd0aa75238f6f824f2afd4ff998bfa` |
| 52 | `def` | [mapArrowFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/maparrowfunctor.md) | 358 | `declaration-track:fe9f029494b5e15871c1d602369c4bbba875f21961d89d15236ff3d60a1ff9fc` |
| 53 | `def` | [mapArrowEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/maparrowequivalence.md) | 368 | `declaration-track:35feb67fc55dce820d1df9aeb73835685de00b1c30c0b31a533e9b25095d87d5` |
| 54 | `instance` | [isEquivalence_mapArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/isequivalence-maparrow.md) | 374 | `declaration-track:979a3d923e6efc4361d12c4f6d57ac2b8b73eb8cd2752e5f0e5f2adac2473728` |
| 55 | `def` | [Arrow.isoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow-isoofnatiso.md) | 384 | `declaration-track:1fa267e44cbc9432f608f277b5aee1f634e4f1e5027a930f82f058ac020e2745` |
| 56 | `def` | [Arrow.equivSigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow-equivsigma.md) | 392 | `declaration-track:29104534013f07bcfe3631ac9f6632054581c8cf60d07e79e0e52b6d9f387057` |
| 57 | `def` | [Arrow.discreteEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow-discreteequiv.md) | 400 | `declaration-track:50c9b9d6e6b5db135f75408aa8868580ce7dee35f210c0e286d14339a0c27b91` |
| 58 | `lemma` | [Arrow.functor_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrowNamespaced.lean/declarations/arrow-functor-ext.md) | 411 | `result-track:4e869540ed64dc4fef79a1d94a43fee181692ce7971e38556d449a08f992464e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69fa4831a2cb4719c8a4a0d416054456e8e6d00f4ac3897f447131bc030384e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
