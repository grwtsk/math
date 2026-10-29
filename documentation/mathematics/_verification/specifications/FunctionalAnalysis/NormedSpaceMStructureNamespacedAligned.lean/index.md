# Verification target: Normed Space MStructure Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ac1e5a0cf7603cb33e1a0480f8d80af91bc9f6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant1100804c718f312e448b14eb9328f5bd97d8212fb224048d3e9ad630617945e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ac1e5a0cf7603cb33e1a0480f8d80af91bc9f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant1100804c718f312e448b14eb9328f5bd97d8212fb224048d3e9ad630617945e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant1100804c718f312e448b14eb9328f5bd97d8212fb224048d3e9ad630617945e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Idempotents` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLprojection](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/islprojection.md) | 83 | `declaration-track:6fe0a057f298d2618aa61f4fb06b6d80b9811f577c087c07562d472a17c8a6ba` |
| 2 | `structure` | [IsMprojection](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/ismprojection.md) | 93 | `declaration-track:8cdb5ec976cd73645229270813747378709695ee187da959c8aa22f63fc7075d` |
| 3 | `theorem` | [Lcomplement](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/lcomplement.md) | 103 | `result-track:fd4eae139f734f816b1f22e0c7a0b304adaa2bd77fbca7a7b7fd07e90eb112fc` |
| 4 | `theorem` | [Lcomplement_iff](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/lcomplement-iff.md) | 109 | `result-track:cb929d58ad43edd4ec05f6523f7f60d7608601e976d977d9dc79bde578b4c4a6` |
| 5 | `theorem` | [commute](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/commute.md) | 113 | `result-track:19938a3c857d75e9d01252ec04f458f27c5e3d94d35fe6b77eb935969cc3ce78` |
| 6 | `theorem` | [mul](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/mul.md) | 155 | `result-track:9240c25ebca3b3214882faeb239ef035bf0ef8dc9459a5101051c8fe9337ba83` |
| 7 | `theorem` | [join](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/join.md) | 173 | `result-track:95b114409d114f41744e5807adb99d6f25cf646c9998c9005c11c7da21dfddf0` |
| 8 | `instance` | [Subtype.hasCompl](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-hascompl.md) | 181 | `declaration-track:8fb427a83b673e9b58c555f7c0f6d5e98cac1b359b6d4c07dcd5e6c1868a4694` |
| 9 | `theorem` | [coe_compl](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-compl.md) | 185 | `result-track:549057ff22c3bc54853f9481863f6e97fcecfa956e1817cee4fd57c7d4caaaf5` |
| 10 | `instance` | [Subtype.inf](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-inf.md) | 189 | `declaration-track:6739c0f82792be4f33d45d1a50dfee53659ae18e7ae8dc6b6c145f0d08e451bd` |
| 11 | `theorem` | [coe_inf](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-inf.md) | 193 | `result-track:e0a6467f4c8b545e1ad7d68a49abb731f2d0538a9cc88c332d1cf87d3dd8b8e1` |
| 12 | `instance` | [Subtype.sup](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-sup.md) | 198 | `declaration-track:99ee2f37124286a50a881f3f94c6ffd4bab9e380c1af542d9780fb9be5915c7c` |
| 13 | `theorem` | [coe_sup](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-sup.md) | 202 | `result-track:f273f60ddf5b0744b2eedd7af067df265984a9ada66d0ddd530160755fc207f2` |
| 14 | `instance` | [Subtype.sdiff](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-sdiff.md) | 207 | `declaration-track:b94855386d460fcfcfc2f5de913552051e1d0865327a343c3a93e4de297f41f6` |
| 15 | `theorem` | [coe_sdiff](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-sdiff.md) | 211 | `result-track:48c877d896b505abe6f61b924e2e4edab0df8ca159ac1382fdbaab5e29c2b032` |
| 16 | `instance` | [Subtype.partialOrder](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-partialorder.md) | 216 | `declaration-track:9c41824743049a0901bc3eec5bd79b910c0ef69265dfadafb1d7346832c2cb89` |
| 17 | `theorem` | [le_def](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/le-def.md) | 225 | `result-track:169ea182e00521978c1397307d03e68031a094d675e30d5a2d79d08a5457fcd1` |
| 18 | `instance` | [Subtype.zero](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-zero.md) | 230 | `declaration-track:3e94eef94ae339d5153e8020776d23ecf3d3cd324b01c1fca24be4f54255eb24` |
| 19 | `theorem` | [coe_zero](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-zero.md) | 235 | `result-track:c84b1d69104a83bddce7ebcee86a4913feb2defcc7aae34e2732a066ca575d84` |
| 20 | `instance` | [Subtype.one](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-one.md) | 239 | `declaration-track:4a024386b71a9e58a9c8cfc5a50bd62f7679f56cdeb0018dac3de12665c77286` |
| 21 | `theorem` | [coe_one](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-one.md) | 243 | `result-track:3a562caeff0e3888325e8ca7ef27742c44549229985f03c90f9c5c4604054ad8` |
| 22 | `instance` | [Subtype.boundedOrder](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-boundedorder.md) | 247 | `declaration-track:2a28a610f067d76333ae4fefc4c808450f52d62505ae4a36dd45466a8d2aca0b` |
| 23 | `theorem` | [coe_bot](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-bot.md) | 255 | `result-track:8e5bf440a39bdd03554a7e818019deb2adc3d68ad296ae5b58f726dea1a80fbf` |
| 24 | `theorem` | [coe_top](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/coe-top.md) | 262 | `result-track:6343f475e864034d3ff6b4618adebb58768bda741f5c8a236399bf7510201bc9` |
| 25 | `theorem` | [compl_mul](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/compl-mul.md) | 268 | `result-track:84d01407f9040cf4896d7fda354ab5f4ec4f90b7e5331dc807ed9b01a903ea80` |
| 26 | `theorem` | [mul_compl_self](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/mul-compl-self.md) | 272 | `result-track:f880e667a6a59ae9c8d6dc71b7e4d9b0d8de2241c1f56a591c027267c9eb58a0` |
| 27 | `theorem` | [distrib_lattice_lemma](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/distrib-lattice-lemma.md) | 276 | `result-track:571cebd08fbcdc8c033e74619217115c1853eeb36694779f6ed96a269d518a1e` |
| 28 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/instance.md) | 291 | `declaration-track:e44d18bd3077ab54e3990d39d8581b878741c8824068957d320b4f6244e1ad92` |
| 29 | `instance` | [Subtype.distribLattice](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-distriblattice.md) | 312 | `declaration-track:2c86b6630a20acd9f5baeeac5418760c356a282d5a75a342e283fa0f2069ca31` |
| 30 | `instance` | [Subtype.BooleanAlgebra](../../../../FunctionalAnalysis/NormedSpaceMStructureNamespacedAligned.lean/declarations/subtype-booleanalgebra.md) | 327 | `declaration-track:bc27347ad3e50c03be39d83630f4cf0d05d17f0ca57ee1f637dcef2d57bd7f95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4e45a9e908521ec1efe6c8c1a23dcc3be9d301ba506e016762e6c00f6a94dcb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant1100804c718f312e448b14eb9328f5bd97d8212fb224048d3e9ad630617945e1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant1100804c718f312e448b14eb9328f5bd97d8212fb224048d3e9ad630617945e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
