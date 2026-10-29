# Verification target: PFunctor Univariate Basic Comp Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a665781e7feec54bf53b854b485f65a38f30b2",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca8c23bffe721b3461f7f9af07d21732257f0e72491ecb465b42d14536089822.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a665781e7feec54bf53b854b485f65a38f30b2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca8c23bffe721b3461f7f9af07d21732257f0e72491ecb465b42d14536089822.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca8c23bffe721b3461f7f9af07d21732257f0e72491ecb465b42d14536089822.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.W.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PFunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/pfunctor.md) | 30 | `declaration-track:0c9745c729c6068d824e83a747b3f6ff44684f92019b7466901b3b7340d5c196` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/instance.md) | 39 | `declaration-track:2996e2e383830573b3d76a11289c360609488471e5973d008689878ac6dc1447` |
| 3 | `def` | [Obj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/obj.md) | 45 | `declaration-track:8dadcdc375cb9f2ea15c91a1b681aabdd4608a3d2d1db76714ffd9358538010d` |
| 4 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/map.md) | 50 | `declaration-track:70fddb11eba7925ae24d20ca4d8bb04b83fc38d8bc8d6ac6cc3158630c9eb8d6` |
| 5 | `instance` | [Obj.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/obj-inhabited.md) | 54 | `declaration-track:4bd4bcad0f5828e66c8ed084f32bc74bb5208d86f786011477d3593bb00116bd` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:7b93ce7a1daac25612b41b661fd94b04365f68b74d5181b13edd021ec4dc7e09` |
| 7 | `theorem` | [map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/map-eq.md) | 60 | `result-track:2ff41188e7d2d6945be70bd872982307b8b2ecda0f0e2f12597281a082cec826` |
| 8 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/id-map.md) | 65 | `result-track:a50a93947640df906a1861874e644879cdd5bd227dcb6715f99674f7a57e6366` |
| 9 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/comp-map.md) | 68 | `result-track:c2d76053a96d297c2a871d65e4eb641633f255c3f99b2b25fa53c402464376fd` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/instance-source-edition-3.md) | 72 | `declaration-track:e14badbefcf59bd1631a8ed35a9177902026212a94faad8fbb42e0cd938ca2b0` |
| 11 | `def` | [W](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/w.md) | 79 | `declaration-track:eb9b50ba56d8f6a669ff4f92a93aa84841822f87c8e2b9ced78ba5dda262a876` |
| 12 | `def` | [W.head](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/w-head.md) | 91 | `declaration-track:8113d6565edb54d82134dc0476eb6fa23374e2aea8c2a482e7078cbfbf5735fd` |
| 13 | `def` | [W.children](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/w-children.md) | 96 | `declaration-track:ea7c0d186a074fde64e3316f8680fe07e75ee855f01c7045f2d3c5b172f05455` |
| 14 | `def` | [W.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/w-dest.md) | 101 | `declaration-track:9e6e3d1d60ee0325aaa8e85ceb884a37f98277fb4c60a8127cd82181272dbcfb` |
| 15 | `def` | [W.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/w-mk.md) | 106 | `declaration-track:c7dda701881ed68dcc8392272ec0919441f01f8c805d63e870b6e3802e4e7bd9` |
| 16 | `theorem` | [W.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/w-dest-mk.md) | 111 | `result-track:351d619c4169cffeac1cd8e38d5d0255cd91155cb599113d15d0596d286ca0bc` |
| 17 | `theorem` | [W.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/w-mk-dest.md) | 115 | `result-track:6e6cd8afac2d5a335c628cc770846505e91a8afadf656205fd6c5bd8c9477f45` |
| 18 | `def` | [IdxCat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/idxcat.md) | 123 | `declaration-track:9b7a76736a87cf57474b726eaeb816403283e9b4841d62ff12b6c1bda589a8e9` |
| 19 | `instance` | [IdxCat.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/idxcat-inhabited.md) | 127 | `declaration-track:a8bfed0464874bf4f127b63799d79626d0f270a8abaebf825f437be2c4e8ac99` |
| 20 | `def` | [Obj.iget](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/obj-iget.md) | 135 | `declaration-track:4b82c32327710e3a0c96ec3670f9331f3d20c524aba1ce8c6efd1d0228c89cd2` |
| 21 | `theorem` | [fst_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/fst-map.md) | 140 | `result-track:4e8ce6a5609d7237930cf6aab5a5a759584880bbf4fc6a59037ca8d1ca3d828d` |
| 22 | `theorem` | [iget_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/iget-map.md) | 144 | `result-track:b749608448cb0f11807c0174f7196529a3f70d14ad9f0cbd45f3aaf4e9a3cd70` |
| 23 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/comp.md) | 159 | `declaration-track:f4aa77587f36ad71a4931851b30e33f5a1355fe26b9650778bb863fd63593bb6` |
| 24 | `def` | [comp.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/comp-mk.md) | 164 | `declaration-track:516c1423496ec06335bc9e6c7028b25ebb4f5b9652ae7f549ce2cb8686f1d0fc` |
| 25 | `def` | [comp.get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/comp-get.md) | 169 | `declaration-track:6745a7c8d23b1f935638fb1da4d8ded9c15c499b3a776b3b0f8fb35571917486` |
| 26 | `theorem` | [liftp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/liftp-iff-source-edition-2.md) | 184 | `result-track:ae007f8701414ac8738bd2b68bd744c554a208369cd563dd7234aae3968690c7` |
| 27 | `theorem` | [liftp_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/liftp-iff.md) | 197 | `result-track:3a5f0427f838bc0f805675529c0943c29f453b5557d3eed5e957089b73249be3` |
| 28 | `theorem` | [liftr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/liftr-iff.md) | 206 | `result-track:130c0ffc1e70baddfbf60a24755d9cb4e578c1ae53db6b89c11c7767c8f26336` |
| 29 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicCompMap.lean/declarations/supp-eq.md) | 230 | `result-track:ea7c65c484b6a63d7fd93e280200c999ba1c41e980574fcd171ba5b578d6a178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e058ca8df6551144b7f0ac2f78563965a9075242abe5826d70796b09542e5ed5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca8c23bffe721b3461f7f9af07d21732257f0e72491ecb465b42d14536089822.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca8c23bffe721b3461f7f9af07d21732257f0e72491ecb465b42d14536089822.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
