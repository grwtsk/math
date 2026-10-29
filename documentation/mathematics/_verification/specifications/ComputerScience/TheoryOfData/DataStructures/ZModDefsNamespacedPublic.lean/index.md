# Verification target: ZMod Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95fe621288c1cf29274b777462da2e244b36c812",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95fe621288c1cf29274b777462da2e244b36c812`.

Source path: `GRWTSK/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [val_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/val-intcast.md) | 61 | `result-track:8efc54cae021094bf6f42ac8c2b8f9f87d9138eaf483be3a29aeeab575ae91b4` |
| 2 | `instance` | [instCommSemigroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instcommsemigroup.md) | 76 | `declaration-track:b5e6ca3f393cfba5b0cd64349862032bdec245248a89a207fe27d86eafd5d5d8` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:506969534bae91c65e0c792405fa1fdb6dcffaf63c3dd3b9d5a5d98232411883` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:fd1cf457ca0649006ef3275e1659a7630b2a3f7e8fcf8b1ec8f4c51d2fd3c1fc` |
| 5 | `theorem` | [left_distrib_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/left-distrib-aux.md) | 92 | `result-track:3e1a8877a3b2fafc2c823fff811fae134492780dc46d390efffcadde86a95c32` |
| 6 | `instance` | [instDistrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instdistrib.md) | 101 | `declaration-track:995806c68c6bd7938dbcf8ca22fe1b416f7a04277507e37583be451c768dbdf8` |
| 7 | `instance` | [instNonUnitalCommRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instnonunitalcommring.md) | 106 | `declaration-track:cdf1cbf9f773f9a79377074e6c498198771cbfa125299f1072e72a7a402d066b` |
| 8 | `instance` | [instCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instcommmonoid.md) | 110 | `declaration-track:a1c073a4fce1417dd5b98f70933c3c9208b3ec41c7ad9c10b9741f561829b2e4` |
| 9 | `instance` | [instHasDistribNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/insthasdistribneg.md) | 115 | `declaration-track:1ed00f4ba0dc88ebced22c12260ab1ec8ead04de896cb4521e6581ec5a72f193` |
| 10 | `def` | [instCommRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instcommring.md) | 134 | `declaration-track:7c9523561354a1629e127da04f327f3193c7f4d96afd048fa69e04979c21899d` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instance.md) | 143 | `declaration-track:2fb172716e5b2277a6f1eb7f039fe198aa282dcf18ca53fe2cf9c94f30ba8922` |
| 12 | `def` | [ZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/zmod.md) | 150 | `declaration-track:fc221a1fc4e438bcd3259c0de45b8d96ebe0a04af983ea8efd7d5bcaebb5bf52` |
| 13 | `instance` | [ZMod.decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/zmod-decidableeq.md) | 154 | `declaration-track:759e0c9abfd9b4efc193e0d9b8fbe14a68d5bd098404a8ca2bdb29fe7f2eff0f` |
| 14 | `instance` | [ZMod.repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/zmod-repr.md) | 158 | `declaration-track:622e0a3d85962061de4b65c14ea68dab8863593ebfa2a127b93e8d863ed009e0` |
| 15 | `instance` | [instUnique](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/instunique.md) | 164 | `declaration-track:b80e5f307cfacc269076360b784b9b2d75413fde4dc7728d6728d6df9609aa04` |
| 16 | `instance` | [fintype](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/fintype.md) | 166 | `declaration-track:c7e34ff72f5e7de4134da650ab9ba1ca3f1032151917a4a080485e87a13c83ee` |
| 17 | `instance` | [infinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/infinite.md) | 170 | `declaration-track:3a646393fb10b79a3e247038b774eb8413b7670975791d57f6fada9e451fcf76` |
| 18 | `theorem` | [card](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/card.md) | 174 | `result-track:ed0c3dd079c347bab219afbe0816b8a2d6998faa83a7a803798f72f255aadceb` |
| 19 | `instance` | [commRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/commring.md) | 183 | `declaration-track:9664abbf2b731aee36eb26b0640b60ec797da23215373bd02bc05cd436fa920c` |
| 20 | `instance` | [inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/inhabited.md) | 240 | `declaration-track:f39274c76c3362bdd04a63582353ae7f91e0af86bfd3dff3ebd1d2d4198144ec` |
| 21 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsNamespacedPublic.lean/declarations/example.md) | 244 | `declaration-track:9ffd9b774f3b95fa360b0d467b3d07e4fdd679324021af6a6a03fd7a9c6d83c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=316f912e14505a8cccf21101aa0c2ad390efd9c9481b2acf3da3706572e9d7c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
