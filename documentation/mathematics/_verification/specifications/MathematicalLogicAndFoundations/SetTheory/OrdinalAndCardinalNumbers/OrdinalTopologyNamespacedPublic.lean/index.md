# Verification target: Ordinal Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "666439a88373d95460d8bb292b600151f66619ca",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `666439a88373d95460d8bb292b600151f66619ca`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:6bee0a693f64260e64c85171131dac283020b3320959cac288f27ed94c4ec60e` |
| 2 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/instance.md) | 51 | `declaration-track:057c89d2621675d66620351ec5f067d6b1394c1af7da8fc0e9f48b409ac10691` |
| 3 | `theorem` | [mem_closure_tfae](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/mem-closure-tfae.md) | 54 | `result-track:3d8779641b171ca7f6d41e6a06fabed03acd170ba35ca8f660a15049692bae89` |
| 4 | `theorem` | [mem_closure_iff_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/mem-closure-iff-isup.md) | 85 | `result-track:edf5d026342dcde78f0dc422e40d666ffb49f22d8ea64000403c28cf725e63ed` |
| 5 | `theorem` | [mem_iff_iSup_of_isClosed](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/mem-iff-isup-of-isclosed.md) | 91 | `result-track:a49cfd2be9d7a374c932040b2d8cba1ed30ab6555c87bea0fa31628b19ddef63` |
| 6 | `theorem` | [mem_closure_iff_bsup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/mem-closure-iff-bsup.md) | 97 | `result-track:653a9daa311da65348196329d5ad67c7974b69b976c30755ded12a53c80f4f35` |
| 7 | `theorem` | [mem_closed_iff_bsup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/mem-closed-iff-bsup.md) | 109 | `result-track:c8f5e4af037b5f68a140682ca953930afc455e1a9d92b54843a76eed17e47dd7` |
| 8 | `theorem` | [isClosed_iff_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isclosed-iff-isup.md) | 115 | `result-track:5a01d914d3a9f9c39cb236fd8d12d228e67004f4be8503437a5b735fc0c8cba4` |
| 9 | `theorem` | [isClosed_iff_bsup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isclosed-iff-bsup.md) | 125 | `result-track:1cbefbade2676dd41662af03a74d41817949e46bc9e97fc3a320c2469193efcf` |
| 10 | `theorem` | [enumOrd_isNormal_iff_isClosed](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/enumord-isnormal-iff-isclosed.md) | 137 | `result-track:05d2f5c7b1ae8cc6f4db34be14518aa6a7309305540a3f4413bfd0871b281be3` |
| 11 | `def` | [IsAcc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isacc.md) | 167 | `declaration-track:984d7e15e8ff2049b08b22bd890c52d53b03c3bfc43d9dd1d8625fa153b5660b` |
| 12 | `def` | [IsClosedBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isclosedbelow.md) | 173 | `declaration-track:ad245a9e3a494933d53de3e133ae6a3e78f6679125bf2bda9eaf5dd5e0a10cb1` |
| 13 | `theorem` | [isAcc_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isacc-iff.md) | 177 | `result-track:25d4d8304e2a20e4069fdd7b5c8107a6f0a092efa58901d9f2c251240ee81777` |
| 14 | `theorem` | [IsAcc.forall_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isacc-forall-lt.md) | 183 | `result-track:0af82e42c4596a35ad54c60d2b4429b6babe316e309b83b69a68502d2e1c0b59` |
| 15 | `theorem` | [IsAcc.pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isacc-pos.md) | 187 | `result-track:e1d75f6343cb0f670e44c145a5fc68a453d82c6b99e1c10076e47d6d86481e3d` |
| 16 | `theorem` | [IsAcc.isSuccLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isacc-issucclimit.md) | 191 | `result-track:abe3a4153121798b06622727b98f20ef35ca3cafbbefb82016843dafd5027bd0` |
| 17 | `theorem` | [IsAcc.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isacc-mono.md) | 195 | `result-track:1fa27124933947ae2bc825ecbf70dbe2ddfd2dfb2f487d930bf9ab7d9da71f38` |
| 18 | `theorem` | [IsAcc.inter_Ioo_nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isacc-inter-ioo-nonempty.md) | 199 | `result-track:354c3bd72f5b51ce454c6d79faeefe8a33667ee3ea6f9c939a11a7aa92bd0bc1` |
| 19 | `theorem` | [accPt_subtype](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/accpt-subtype.md) | 203 | `result-track:973b060f6910dc7c3cf33ab7821297f351676a4ab2c1fd4dc3b42e67ba1dd605` |
| 20 | `theorem` | [isClosedBelow_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isclosedbelow-iff.md) | 208 | `result-track:ab63f640d72ce33139ce49ddd237faeb5e1287cab06b66a5fac94d0b9f17e81b` |
| 21 | `theorem` | [IsClosedBelow.sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isclosedbelow-sinter.md) | 217 | `result-track:e00910a97d4cdc4a82f6816fe71d580ae2153f29df392d3dd80fcc941599315b` |
| 22 | `theorem` | [IsClosedBelow.iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyNamespacedPublic.lean/declarations/isclosedbelow-iinter.md) | 224 | `result-track:b9bb8447cd8ad65d5f12c5ef2ef6738ca61201a74f3ecaaeed7673a269512c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=864e6f396b9e88e696ef1f47c43e05ff4db7e4b2e9dfbe3019233e0af166b0f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
