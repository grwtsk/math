# Verification target: Cofix Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.M` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [corecF](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/corecf.md) | 67 | `declaration-track:3128cc7798cf544de1c1d814eccd1b4048f09254ac7b68af23c6d9ee4213aed0` |
| 2 | `theorem` | [corecF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/corecf-eq.md) | 72 | `result-track:2b515cff85bbb806858fdaf3be1c67bf65017dfacd55ea71c66063872a4313c8` |
| 3 | `def` | [IsPrecongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/isprecongr.md) | 79 | `declaration-track:dd58d9ea80cd42419a54d15c79344f74981ab12f5cbfd18188bd39a9625b9a16` |
| 4 | `def` | [Mcongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/mcongr.md) | 87 | `declaration-track:b3fa35f77f759b1c90db44cfa6894e64a77f2369af5c34d6d680f02398b9d8e7` |
| 5 | `def` | [Cofix](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix.md) | 99 | `declaration-track:1d75c919e27db9099659d0d8f164adcd4f60e910a1a37a6388bfe7c793ca6eee` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/instance.md) | 103 | `declaration-track:c54f89f7deb5f9a435defee6a6699e143b30217ff37eba2b7c90dce3c02aaefd` |
| 7 | `def` | [mRepr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/mrepr.md) | 108 | `declaration-track:d7ecd59784a4bb59471a1a2c3d13f9a68401e2e5911096938f845682ffad5832` |
| 8 | `def` | [Cofix.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-map.md) | 114 | `declaration-track:ed59909cabb2b2abf63e5ec1bd8359c8cc09691dd6d048ff029e1deb6ee0bb5b` |
| 9 | `instance` | [Cofix.mvfunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-mvfunctor.md) | 137 | `declaration-track:91d81d504f3d0c77965bc21c183999621f047ca5ea03efe32554e320d6aeae93` |
| 10 | `def` | [Cofix.corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-corec.md) | 141 | `declaration-track:1822f9b6b8de3f21c7dc3c271e1632c0b1dcf67d650afbdb7661c4809488eabf` |
| 11 | `def` | [Cofix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-dest.md) | 146 | `declaration-track:5a331862ba1875c5266a267e1b1b828ab26b5767331cb6feaea76f4a34c0f11e` |
| 12 | `def` | [Cofix.abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-abs.md) | 162 | `declaration-track:906660f0c57c3468948baab7f77ca11718be4c6fc4e6918a67c4a19033acae9c` |
| 13 | `def` | [Cofix.repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-repr.md) | 167 | `declaration-track:b8194afb3078f50b905e3a6bd07560b702a65add1434991a48ff14bfe835adc3` |
| 14 | `def` | [Cofix.corec'₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-corec-source-edition-2.md) | 172 | `declaration-track:8dbfee9216eca02672beb85d1082e0db38a70ceff71ba140b968a59389c601e3` |
| 15 | `def` | [Cofix.corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-corec-source-edition-3.md) | 179 | `declaration-track:ba525f808a2f372c52d3f8d7a796d6abc993be8003dc0b226702b4816882a26a` |
| 16 | `def` | [Cofix.corec₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-corec-source-edition-4.md) | 187 | `declaration-track:e4636998ab7b729f757ad02ac691363ea6910169b4ea36b2d4732dfc9aea9e87` |
| 17 | `theorem` | [Cofix.dest_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-dest-corec-source-edition-2.md) | 192 | `result-track:5ae4bc113d20cfbf18c7a12079413fb54c85d30e1af8177faa3d3d385118b9fd` |
| 18 | `def` | [Cofix.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-mk.md) | 202 | `declaration-track:8fb973cba9484df2af2a66850d95cfea2a908dad46be598170f7ddda4f5de49e` |
| 19 | `theorem` | [Cofix.bisim_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-bisim-aux.md) | 222 | `result-track:63d9806bd18b5b62126d0e01e8dcb44694870201daac03f2b7dedfa8b1ef570b` |
| 20 | `theorem` | [Cofix.bisim_rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-bisim-rel.md) | 266 | `result-track:68a53046f38e822f00e2a2e7c2217c42751df09114d84f00eddcf2ef485e0857` |
| 21 | `theorem` | [Cofix.bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-bisim-source-edition-2.md) | 292 | `result-track:74209a05b99a423f6dd3904a5e40f4974c8b1339fa304441a9b06173c3c05650` |
| 22 | `theorem` | [Cofix.bisim₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-bisim-source-edition-3.md) | 313 | `result-track:850a3ffa476cc11ce41867951a4404c78e2ffc8f4ae5e4d000c1752c777bf7d2` |
| 23 | `theorem` | [Cofix.bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-bisim.md) | 322 | `result-track:654a87b8007846654e28d93a9998739c1909b6906714aa822d4549f6f69083a8` |
| 24 | `theorem` | [Cofix.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-mk-dest.md) | 343 | `result-track:d5498381c08905551e5a7520dd5d12d2e080188d5dbcecaa370a80c75234c4c2` |
| 25 | `theorem` | [Cofix.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-dest-mk.md) | 363 | `result-track:825c616c03db3426559c5fbb7784ae812a29601f2ebf6f9fd48358c495d097d3` |
| 26 | `theorem` | [Cofix.ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-ext.md) | 370 | `result-track:8a164f3e9782b39be5995734d5bba667ac6b9f9ce5ed03261ab9c7b5463ebe93` |
| 27 | `theorem` | [Cofix.ext_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-ext-mk.md) | 374 | `result-track:df326c4075234fb1b545b3ceef73cc2292474285489788c37c362cb3284a3612` |
| 28 | `theorem` | [liftR_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/liftr-map.md) | 386 | `result-track:acef4f47766c802a58b7fc34126b572c35b339e0f4e4fb6b3a2fc086f6687a4d` |
| 29 | `theorem` | [liftR_map_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/liftr-map-last.md) | 398 | `result-track:2eb0cb335f70e0cf7f30d035c9e020bb3df58e5197999b3eb126251752af0731` |
| 30 | `theorem` | [liftR_map_last'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/liftr-map-last-source-edition-2.md) | 430 | `result-track:ad830b101c27cf58bb46f6b7fb6e92153f5b90f53e807700d453684ded177046` |
| 31 | `theorem` | [Cofix.abs_repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-abs-repr.md) | 440 | `result-track:f0a18a5ba40ed65c052de138235d7804b4571c809d31948ff8f41c83bc8ddd2d` |
| 32 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/syntax.md) | 466 | `declaration-track:7f68b2005d859a0e0922b6bc804c0b2677be265987c3508713206fc49f08de09` |
| 33 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/elab-rules.md) | 468 | `declaration-track:a9bd5f353f719235a1eb1a26af5c6c48497b3ee47d394e9591adaf264cfc2b8f` |
| 34 | `theorem` | [corec_roll](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/corec-roll.md) | 528 | `result-track:d745638e5c5977435255817ae50a5ddf184d8c5f059cd7de6125e06c2e7ad8e9` |
| 35 | `theorem` | [Cofix.dest_corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-dest-corec.md) | 537 | `result-track:2a12c4af0b4f276b7c7d3a20e88f003272d1a51cf870f149ca57a1df33cb0a19` |
| 36 | `theorem` | [Cofix.dest_corec₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/cofix-dest-corec-source-edition-3.md) | 556 | `result-track:d3deb2951283d2dc0658a22465b72aaedeaed7a030e8290deae6e227b2bf01be` |
| 37 | `instance` | [mvqpfCofix](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixNamespacedAligned.lean/declarations/mvqpfcofix.md) | 564 | `declaration-track:5da6122f3d098e0e75df797f7610bb6fce66f6492c2b44fdf694221e60b16212` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89d77621807338a0426491f7fec125f5e274a7687e7c53c5765c31cbf8d2d503 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
