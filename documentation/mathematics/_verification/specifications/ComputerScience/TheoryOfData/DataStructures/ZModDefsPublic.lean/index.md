# Verification target: ZMod Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "059c7d519ece436e01ef56276cde19ab8d74ac16",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantaf793f1736a6686fe8eedc7746e05ae29c68f7b463a156f314d3d5df9f2862fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `059c7d519ece436e01ef56276cde19ab8d74ac16`.

Source path: `GRWTSK/Algebra/Defs/Variantaf793f1736a6686fe8eedc7746e05ae29c68f7b463a156f314d3d5df9f2862fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantaf793f1736a6686fe8eedc7746e05ae29c68f7b463a156f314d3d5df9f2862fc.lean.json)

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
| 1 | `theorem` | [val_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/val-intcast.md) | 53 | `result-track:a7f8896935f6b7cd1a607379429588890c82be1fadaaacda31d72a894804671d` |
| 2 | `instance` | [instCommSemigroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instcommsemigroup.md) | 68 | `declaration-track:f2a4015c86e6533394ff1fb4cc8e2bc2d6ec82ee0c3d83f91dabd325a7712f04` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:c55a6b745c951f3d7e680475f61ab78e01b77837d8a7579da3a2d65c89a84e15` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:c808762d141156e8a474ea5ab1bb9793319129d5d947c6e8bba36570f3e796d0` |
| 5 | `theorem` | [left_distrib_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/left-distrib-aux.md) | 84 | `result-track:ceb5824db997e7772ec90ce86c20d9566bf368bdbd474ba05a90713e27e80887` |
| 6 | `instance` | [instDistrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instdistrib.md) | 93 | `declaration-track:1c3457add77158ab15b45f52ae81ef133143492564a929d9985a759a2148013b` |
| 7 | `instance` | [instNonUnitalCommRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instnonunitalcommring.md) | 98 | `declaration-track:c671aada3985b823e5045f83397b263e22feef4fe4da8d8646382ab00b284ddc` |
| 8 | `instance` | [instCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instcommmonoid.md) | 102 | `declaration-track:bd6f730882d1f6314785be0273e9987a1d7fe0a763016fbff41f401fadd4c746` |
| 9 | `instance` | [instHasDistribNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/insthasdistribneg.md) | 107 | `declaration-track:578fdf84e4623925dc8abdf97c1cf6a9343a4763febfe427f09cc9cd13b3f6fc` |
| 10 | `def` | [instCommRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instcommring.md) | 126 | `declaration-track:0f2d3e52fb195a3717ad10c7f1fa7a027c411f2dc7f2c91c49764b7521eb8ee8` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instance.md) | 135 | `declaration-track:2d328f61994fdd55549379f400012fc65a67025f119500b4d7294e392a55690b` |
| 12 | `def` | [ZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/zmod.md) | 142 | `declaration-track:26feb0527ffe01d2d07df36b28bed45dcfc90236dec01bad3a5425f1b66f3f9e` |
| 13 | `instance` | [ZMod.decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/zmod-decidableeq.md) | 146 | `declaration-track:219aa010fbb29811a30fb886f541810d05da0847e6d60ed262bb18013d22ee9c` |
| 14 | `instance` | [ZMod.repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/zmod-repr.md) | 150 | `declaration-track:0634bce3a156d1df7f819c70cff5dff80d190792ee68654dd0cd5c6eb488ffba` |
| 15 | `instance` | [instUnique](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/instunique.md) | 156 | `declaration-track:a223becb3aed78ec6e72d526de8ee3fda79a66bf51c926a3164aae8617169fee` |
| 16 | `instance` | [fintype](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/fintype.md) | 158 | `declaration-track:38ef7163534ac81d677a900d8a738222840d159c26e1d589ab56c842f45a9915` |
| 17 | `instance` | [infinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/infinite.md) | 162 | `declaration-track:95aac51aafce3bd2e93d509601095b400a149b4b5f9d3833ae3849ea36125c96` |
| 18 | `theorem` | [card](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/card.md) | 166 | `result-track:06b0add3f218ee6511f156cf7a7723aa1c52c8a075bcebaceabb4f83e872967f` |
| 19 | `instance` | [commRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/commring.md) | 175 | `declaration-track:7faf05c1fb682cd435b6c3203c520c1cee8c3dfc9649e439447060b24ecfffe9` |
| 20 | `instance` | [inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/inhabited.md) | 232 | `declaration-track:8a7ff59a4dd15bc6b9af99c07ab81c740115764c99e377ff87daa0577b97c5c3` |
| 21 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModDefsPublic.lean/declarations/example.md) | 236 | `declaration-track:0888a6758bb36f2cd75bbba6518370810e7f776d9429f65e63ebc1e98af9f15d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64204cbb321efbe3470bd697c67862e623d288573c2476b1805db42530c446f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variantaf793f1736a6686fe8eedc7746e05ae29c68f7b463a156f314d3d5df9f2862fc.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variantaf793f1736a6686fe8eedc7746e05ae29c68f7b463a156f314d3d5df9f2862fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
