# Verification target: PFunctor Univariate Basic Map Eq Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ed00a7ebd2d5e749ebf937cc9e2a2ea73fd267",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ed00a7ebd2d5e749ebf937cc9e2a2ea73fd267`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean.json)

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
| 1 | `structure` | [PFunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/pfunctor.md) | 28 | `declaration-track:29d915c9b2daf21eb7f357efd06db5e85f50f3320ad02b33c6979cd034144a83` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:46765cb4bf8bd28d4b97234a4c104c75ab1704026a84d3204cffef8606a327ed` |
| 3 | `def` | [Obj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/obj.md) | 43 | `declaration-track:c6a20c30136ec8dda36eb042dfffb8538e056a806a0dd879c7bb9621103d3f17` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/instance-source-edition-4.md) | 46 | `declaration-track:e9dd73f10499fb5239ce6da72a15db4f712e2786faf72d9be00ce12b9d7e4509` |
| 5 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/map.md) | 50 | `declaration-track:2682a34719ebdeea72916a875499cb61fadf0cf8dd3aa40ab831cdcb04f3330d` |
| 6 | `instance` | [Obj.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/obj-inhabited.md) | 53 | `declaration-track:b54b4631adc12af0770f35d8c87d6c8ade399bfef6628462fb5338f9c1e28762` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/instance.md) | 56 | `declaration-track:0349b2a830a9659ad9a4a1bec2a65abae6796498967ab069cf86da0ac919bbf3` |
| 8 | `theorem` | [map_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/map-eq-map.md) | 60 | `result-track:447862d519e6c5d67a98887b9cedbe121b2620cc930a324af2293e957175724a` |
| 9 | `theorem` | [map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/map-eq.md) | 64 | `result-track:c074fe236b1a67f7a1921d32161abe06dcb53848d5c81638f8f3ea01a3af86c2` |
| 10 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/id-map.md) | 69 | `result-track:371c25f3591706b47e8d5f9ce29fa551de6ca8f58e9401f3a4b5bf328a0107ed` |
| 11 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/map-map.md) | 72 | `result-track:0152b3d930c1a0c7ae4c1fef6a2bff3944c1ec9b7a0f5bc2404af2173ffa2f83` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/instance-source-edition-3.md) | 75 | `declaration-track:8c84f9537bb1a273de689f6d839ae4a7dab63358a0fc12b24b3efd58f994549c` |
| 13 | `def` | [W](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/w.md) | 82 | `declaration-track:7478ba84fa0b34d66a3af64c55cdfa98af18f0e072c8c96e0e300c8e258476da` |
| 14 | `def` | [W.head](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/w-head.md) | 92 | `declaration-track:4755bfd0d26e1d02eebbff274755c1e80bec65ed5d1e852863f4ea4e8412b6ef` |
| 15 | `def` | [W.children](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/w-children.md) | 96 | `declaration-track:ebe84d979352c6e1b55e34ae4031ad31cab7ef246737e3ae332ac96bcd22857d` |
| 16 | `def` | [W.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/w-dest.md) | 100 | `declaration-track:311471ae7dcb79dfbc90d79639caa55ca91f8a5d38576ab24d76c746f3648a53` |
| 17 | `def` | [W.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/w-mk.md) | 104 | `declaration-track:15b0f12529dced5685f455bcf708c146102431325f065c3a0934fcbc3bc78fe1` |
| 18 | `theorem` | [W.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/w-dest-mk.md) | 108 | `result-track:fd932170f3ed6ff26082b8779d43be5cc8165e8382a4b22520f6ed1f35d82200` |
| 19 | `theorem` | [W.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/w-mk-dest.md) | 111 | `result-track:de976c307ef1c700d32f638cc46ae8c071e11eb54135e46a1a7405696c44a07b` |
| 20 | `def` | [Idx](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/idx.md) | 118 | `declaration-track:48e3c1b6c0d534495fb2e9c634c2663d28d2e5f238e33e513395d92ee4c8b029` |
| 21 | `instance` | [Idx.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/idx-inhabited.md) | 121 | `declaration-track:7bb8ab703cb292718c0681463b41c0c5341bda8c7b6cdf50891724f9bf45e3ba` |
| 22 | `def` | [Obj.iget](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/obj-iget.md) | 128 | `declaration-track:b59600e631d82524cb46a46873e88488694e0c3a349f825205e5333682ad7dcb` |
| 23 | `theorem` | [fst_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/fst-map.md) | 132 | `result-track:b84c1d17064a5d38b0f9d87d0ff86aa7285565af13fdd1f52828022c9bff49d7` |
| 24 | `theorem` | [iget_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/iget-map.md) | 135 | `result-track:8e30d00a772f859f5d147f6f295909d2c5fc0f4ea0de305569a16e32e6794e10` |
| 25 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/comp.md) | 149 | `declaration-track:0d473d276542917c8f1e5a96d9c2d40998cfb1ec26ee24a7d3ff03a99b5a1598` |
| 26 | `def` | [comp.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/comp-mk.md) | 153 | `declaration-track:33e4927b85eda98019673ec4a5c1a2e7d04562ee63a2f2810533658aade482f6` |
| 27 | `def` | [comp.get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/comp-get.md) | 157 | `declaration-track:6fd3dc55d456c98029b80653f6c8e2aae3cbcb83abf3827a12ecdc7ca63fb154` |
| 28 | `theorem` | [liftp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/liftp-iff.md) | 171 | `result-track:21695e3f61f00f13553e559a674e749690985e0c0c57d87e299b4172017db309` |
| 29 | `theorem` | [liftp_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/liftp-iff-source-edition-2.md) | 183 | `result-track:662fa54b94ac345aefe635477cbf971760b62c92acf00ae64d4c318675092f06` |
| 30 | `theorem` | [liftr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/liftr-iff.md) | 191 | `result-track:9e916a15be385ffa5a05cd813b6891138f794ec11ebad618d1f39ee06528f36e` |
| 31 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicMapEqMap.lean/declarations/supp-eq.md) | 214 | `result-track:ed95fd09932be01c737fdada246b8f76d53c9f1c7c49e1114114ce5dc2df2f90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab12581a94604578863610d02daeb17706b6de0701c5f02a4f9c11b53fe0bf41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
