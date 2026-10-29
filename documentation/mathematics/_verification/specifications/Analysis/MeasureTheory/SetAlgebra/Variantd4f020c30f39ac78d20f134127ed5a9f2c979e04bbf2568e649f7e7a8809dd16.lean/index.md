# Verification target: GRWTSK.Analysis.MeasureTheory.SetAlgebra.Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d2ae3bb529b8f4cd23d0ded1cd2c3fb22d8c1db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/index.md) · [Full source](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d2ae3bb529b8f4cd23d0ded1cd2c3fb22d8c1db`.

Source path: `GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean.json)

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
| 1 | `structure` | [IsSetAlgebra](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/issetalgebra--b494da5226f628a88051d245.md) | 67 | `declaration-track:b494da5226f628a88051d245ed7364a546ee1fecce2035936de8490090cdd175` |
| 2 | `theorem` | [univ_mem](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/univ-mem--86fcbc66fffbca6fc5b417cc.md) | 75 | `result-track:86fcbc66fffbca6fc5b417cc3d8340f144621e602677fe4de51b112e3886d9e2` |
| 3 | `theorem` | [inter_mem](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/inter-mem--1167960f146be0c4bb18503d.md) | 79 | `result-track:1167960f146be0c4bb18503d050ee8a919c757ed0d7602e26ab2f6ed06975f83` |
| 4 | `theorem` | [sdiff_mem](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/sdiff-mem--5898ba260f310b97854f541c.md) | 85 | `result-track:5898ba260f310b97854f541c018e3a61c94746452c9180652a3c7ff33ee412f9` |
| 5 | `theorem` | [isSetRing](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/issetring--fee89599335820f6e196b922.md) | 91 | `result-track:fee89599335820f6e196b922a3de0b9e7310dee377a297b3792aecbb0577a4b2` |
| 6 | `theorem` | [biUnion_mem](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/biunion-mem--5d9eb35c43e5454e526ae1a7.md) | 97 | `result-track:5d9eb35c43e5454e526ae1a76bbcc571ba7da807ca421fb70ab7eb6661db1ed1` |
| 7 | `theorem` | [biInter_mem](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/biinter-mem--9ed7f30225fd2546c8feb8d8.md) | 101 | `result-track:9ed7f30225fd2546c8feb8d8e9112c64767cf51198ab5bd1624ebbb50cf59d93` |
| 8 | `inductive` | [GenerateSetAlgebra](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/generatesetalgebra--656014ea42a00bb513fbb909.md) | 116 | `declaration-track:656014ea42a00bb513fbb9099137b9abcb4a5525974ce672d73196cc186f8949` |
| 9 | `def` | [generateSetAlgebra](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/generatesetalgebra--748537548e80c61d3dda1164.md) | 124 | `declaration-track:748537548e80c61d3dda1164728b11f6b46c956a8cfafe10cb852ba852c75922` |
| 10 | `theorem` | [isSetAlgebra_generateSetAlgebra](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/issetalgebra-generatesetalgebra--938d93af587d0ef495c7ec46.md) | 128 | `result-track:938d93af587d0ef495c7ec46d0f885e9f0d17ba9fa857823e17f98fe852c9cb4` |
| 11 | `theorem` | [self_subset_generateSetAlgebra](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/self-subset-generatesetalgebra--026b7867626fceee5d36f072.md) | 135 | `result-track:026b7867626fceee5d36f07276f2026a261eaebc4ef01e58b22760ca1533717a` |
| 12 | `lemma` | [generateSetAlgebra_induction](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/generatesetalgebra-induction--21f218c79d39ff7c82f1de73.md) | 141 | `result-track:21f218c79d39ff7c82f1de73b096e98e6dcaaf1237203168e02685341bb3e4a1` |
| 13 | `lemma` | [IsSetAlgebra.generateSetAlgebra_subset](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/issetalgebra-generatesetalgebra-subset--b0d36424e76cd5168748898c.md) | 156 | `result-track:b0d36424e76cd5168748898c39a20a63b1f69ca1808eb087276e67940f5160c1` |
| 14 | `theorem` | [generateFrom_generateSetAlgebra_eq](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/generatefrom-generatesetalgebra-eq--c875deb18d438298f980e556.md) | 168 | `result-track:c875deb18d438298f980e556765dce75c8e3b294bf3264b71fad0372a8a9092f` |
| 15 | `theorem` | [generateSetAlgebra_mono](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/generatesetalgebra-mono--4167209debbcbd2f423c2f74.md) | 185 | `result-track:4167209debbcbd2f423c2f74c90ce6cd2034388711eb680039b1db1009696028` |
| 16 | `theorem` | [generateSetAlgebra_subset_self](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/generatesetalgebra-subset-self--a03b2457a49cf2b14133bfef.md) | 192 | `result-track:a03b2457a49cf2b14133bfef2624cd2ecc9e277a4e0745d9bb3ee1a32633c981` |
| 17 | `theorem` | [generateSetAlgebra_eq](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/generatesetalgebra-eq--286e71e3b6ae1d6aa1ecfad3.md) | 196 | `result-track:286e71e3b6ae1d6aa1ecfad3822c1b56bc7b4a5e957cf298214516205c1a4c19` |
| 18 | `theorem` | [mem_generateSetAlgebra_elim](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/mem-generatesetalgebra-elim--2b4645a0153c389e020ab443.md) | 203 | `result-track:2b4645a0153c389e020ab4431bfce492a5096b01e9affebaf737a4e90f2719da` |
| 19 | `theorem` | [countable_generateSetAlgebra](../../../../../../Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/declarations/countable-generatesetalgebra--49d8656f74a9e1240b6f3022.md) | 246 | `result-track:49d8656f74a9e1240b6f3022190b35e683964e8a927f7450f50d505dce728e7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f39d5bcb6715233ab3f7e2e62090e4f36f9f77a7e62446700f0c8810b4129435 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
