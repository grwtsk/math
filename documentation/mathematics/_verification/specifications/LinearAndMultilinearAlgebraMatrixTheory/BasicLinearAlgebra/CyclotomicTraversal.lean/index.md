# Verification target: Cyclotomic Traversal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc30e53c42cc042bfba2a9c2f8e19cda7ca7ca31",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc30e53c42cc042bfba2a9c2f8e19cda7ca7ca31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 2; external provider; requires a separately pinned dependency.
- `FCRS.TheoremGraph` — import line 3; external provider; requires a separately pinned dependency.
- `FCRS.PersistentResidual` — import line 4; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT01_Bertrand` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CINIdentifier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cinidentifier.md) | 21 | `declaration-track:0a430482706d06744bdbe8e14fc806524502ca0d1342cb3949a618fd4a1681bc` |
| 2 | `inductive` | [CYCIdentifier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cycidentifier.md) | 32 | `declaration-track:70c060e3027f4121a494fe726481c9bf62f6b5ea85630014788116d0ae01b0fb` |
| 3 | `inductive` | [CTRIdentifier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/ctridentifier.md) | 45 | `declaration-track:3d3f05871d4005ded8eb76215fced3342f80c54f1f2cba5a854cf2797d912f36` |
| 4 | `inductive` | [TPIdentifier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/tpidentifier.md) | 56 | `declaration-track:56647f6dc75a8153b26a49ec2bc11bdb4da73f1f9e0b926cfe8a6ab0efb0f5dd` |
| 5 | `structure` | [CyclotomicRootAddress](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicrootaddress.md) | 68 | `declaration-track:7b8e0fd7a5d4612fdcbadcc622dcd2ede21f543a596cb9fb342ff78d397444b5` |
| 6 | `theorem` | [CyclotomicRootAddress.pair_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicrootaddress-pair-injective.md) | 75 | `result-track:472375a66bc69fc307172b21d2b7906b77a290380ef3a781243a923b5b7b4308` |
| 7 | `theorem` | [cin01_maximalRootAddressSetCountable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cin01-maximalrootaddresssetcountable.md) | 88 | `result-track:4e0f6f4c32c90b35894f1407c3dad78f4b8d28c79c2f3ec2d9b6cf8923f16654` |
| 8 | `structure` | [CyclotomicPolynomialIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicpolynomialindex.md) | 92 | `declaration-track:265fa721e2495237174fb349853a5e90fffae2f24e498d8b61123d4a278384ae` |
| 9 | `structure` | [CyclotomicExponent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicexponent.md) | 97 | `declaration-track:5bab8b22c997e90123710b798a21909849af0568990144293962c84e7a8cce46` |
| 10 | `structure` | [CyclotomicRootStreamVersion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicrootstreamversion.md) | 101 | `declaration-track:45a060ec7b3113b3100273b1c2d4aa96412ffedfa74cd94cd15f7e1dc3ef4e5f` |
| 11 | `inductive` | [ExactRootSelectionMethod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/exactrootselectionmethod.md) | 105 | `declaration-track:ed05fca2a982ba44696ceeb88f02e2148f02f587810630dc971580c38b2b33cd` |
| 12 | `structure` | [CyclotomicRootOccurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicrootoccurrence.md) | 112 | `declaration-track:f15c6671ee4218426699f2b156180e96081bda1982a0988ae1abcae7aa95a114` |
| 13 | `theorem` | [exactRootOccurrence_boundaries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/exactrootoccurrence-boundaries.md) | 124 | `result-track:a6dd35ce2df11ee45238b94e0ccdd757a9e0359578c4407a3cf3d47359b4bd19` |
| 14 | `structure` | [RootApproximationArtifact](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/rootapproximationartifact.md) | 130 | `declaration-track:5e16b6a97351e17da36dbd422cf723f6e0bf826f141082c3613b3574dd26447a` |
| 15 | `structure` | [CyclotomicRootCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicrootcarrier.md) | 143 | `declaration-track:67ab53dddd4013b21574fb15d007571e16937c924b21203e9d0d67392ec4f405` |
| 16 | `def` | [MaximalCyclotomicCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/maximalcyclotomiccarrier.md) | 147 | `declaration-track:62187bf1ebaf8e61ede1c42a3e28e5a422d74b9a521b783e0f938d7535427e2a` |
| 17 | `structure` | [RootCarrierCapacity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/rootcarriercapacity.md) | 150 | `declaration-track:dbecf44e27216d8a0a03635ad1c95ddcf0a399dfb5fcfa1adf224b9433b57b44` |
| 18 | `inductive` | [ExpressionSignature](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/expressionsignature.md) | 155 | `declaration-track:ba366847473f970d0254ed75ac94fba6c26a7853d77b1e84b38d5823b5fed2c6` |
| 19 | `structure` | [RootIndexing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/rootindexing.md) | 161 | `declaration-track:8459c9663f0236bc17053e3b8b64ba96bdaaca64afd4d393b9cb45c8910e73d9` |
| 20 | `def` | [CyclotomicIntrinsic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyclotomicintrinsic.md) | 165 | `declaration-track:4dcafb2369745f00eab483538c997721044e7881c4d174f4a8e83a24e266dbf9` |
| 21 | `def` | [ForestIntrinsic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/forestintrinsic.md) | 168 | `declaration-track:a2457416a52060841249cae643df10f5e19931ce6dabde17077ecc0ccbef0322` |
| 22 | `structure` | [ExpansionIntrinsic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/expansionintrinsic.md) | 171 | `declaration-track:535502b5e3c4b76dee7af9d285735f17e63ee925297eb944534b64d8a9f10524` |
| 23 | `structure` | [Transportable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/transportable.md) | 176 | `declaration-track:12cfb6dcab40ad49ce87fcb76725f6c13f782d5a173fc461265c48675685b049` |
| 24 | `structure` | [Reflectable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/reflectable.md) | 180 | `declaration-track:edce1a889a9cf3e9ef23c0181959d8d9796bddc2911a35e06ac8107db31f9819` |
| 25 | `def` | [boolRootAddress](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/boolrootaddress.md) | 184 | `declaration-track:20195dc878e96dd636bce453b0f14770b343e11474770efa27a84cb424ded296` |
| 26 | `theorem` | [boolRootAddress_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/boolrootaddress-injective.md) | 194 | `result-track:2191e5b8aaa87550c33325c1beff02082114851de67d146060283a3ae3dacb96` |
| 27 | `theorem` | [cin04_rootIndexingDoesNotImplyCyclotomicExpression](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cin04-rootindexingdoesnotimplycyclotomicexpression.md) | 199 | `result-track:417afa6a30ef0bf7e9a37a23ceebe4c5ddbd5bbdc56334a1242fe822fd379c14` |
| 28 | `theorem` | [tt01_bertrandCapacityAdapter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/tt01-bertrandcapacityadapter.md) | 206 | `result-track:3ea267427444fd7be64e9199dc8d3ebdd069aa2606a7dafd56f38f917318601a` |
| 29 | `def` | [leastBertrandPrime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/leastbertrandprime.md) | 211 | `declaration-track:72c251fe6f55dc0fe20653005118474e0a9cc78c1450ea678d1469af6fa61024` |
| 30 | `theorem` | [leastBertrandPrime_spec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/leastbertrandprime-spec.md) | 214 | `result-track:1a17315c56eb52231f53ed3ceb6a0695a12eae37f4eaea15ba3e590ea75661eb` |
| 31 | `structure` | [BertrandWaveCapacity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/bertrandwavecapacity-source-edition-2.md) | 220 | `declaration-track:d5edea19907a33a7004989017c5d34b3ed6d65051b3419813c68695a4ee45060` |
| 32 | `def` | [bertrandWaveCapacity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/bertrandwavecapacity.md) | 233 | `declaration-track:5faf2e3b15bfdf1fb979da3b3c7c51d35459d11668545f4c4892a7346bf3e49e` |
| 33 | `structure` | [ReadyWaveSelection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/readywaveselection.md) | 257 | `declaration-track:ec2c58bb020c02ef5de732cf829511b84cd9ee6de4ba8d2713da41bdec28d347` |
| 34 | `theorem` | [ctr05_selectedTheoremReadiness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/ctr05-selectedtheoremreadiness.md) | 265 | `result-track:6df08945175c6901b1da69a7b82b53a46df59f1a174ee39a5c42fb559c9dbb0c` |
| 35 | `theorem` | [ctr16_rootOrderDoesNotProveTheorem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/ctr16-rootorderdoesnotprovetheorem.md) | 272 | `result-track:a93b608ad65c4a6242f30c1408b57cfdaa42ce8c5fa5821cd54bbd1908457c72` |
| 36 | `structure` | [VandermondeSeed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/vandermondeseed.md) | 279 | `declaration-track:e4a7892e26c373dd8f755ca0ac10f7829673e755052ff0cfcff898f8b2d21bb5` |
| 37 | `theorem` | [cyc14_vandermondeDeterminantNonzero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/cyc14-vandermondedeterminantnonzero.md) | 288 | `result-track:881a713c1c6e93a27306a94e78ea96ec4075b34bcd3c3f2ced11325636d544b6` |
| 38 | `structure` | [SeedStateEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/seedstateembedding.md) | 295 | `declaration-track:c71595550df9da527b2fdd1c989b26b6491037f37d01a694c49a3d6273d703e1` |
| 39 | `inductive` | [PredictionOutput](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/predictionoutput.md) | 304 | `declaration-track:688e23e12a280b3aa02edd4ef6d662acd0cdd6421cc5754682974b1e5bd23b88` |
| 40 | `structure` | [TypedPrediction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/typedprediction.md) | 313 | `declaration-track:1411d55743d4b310e7be8c75866fcbb4ad3998694b6adaa12e5de2d86d7ca989` |
| 41 | `structure` | [AcceptedBridge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/acceptedbridge.md) | 332 | `declaration-track:a09c908bab921efc880172c1229e8c49278d161c166ba4985be85cb7177b9f2c` |
| 42 | `def` | [predictedCandidate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/predictedcandidate.md) | 337 | `declaration-track:2fba8ed90728d13a912ab6a03a961dd3686c49d637762e7afe06bd7dcb491e3d` |
| 43 | `theorem` | [tp09_predictionIsNotProof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/tp09-predictionisnotproof.md) | 341 | `result-track:dcea89080ad74ad2b9358a885d6be8336e8cce011de249668f0fbc8216a6fef7` |
| 44 | `structure` | [PredictionValidation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/predictionvalidation.md) | 346 | `declaration-track:d7bddda8de50fd7d915298c33e4876a0e1d9dc45b982d46e07f5927d898e0bd9` |
| 45 | `structure` | [TypedPredictionResidual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclotomicTraversal.lean/declarations/typedpredictionresidual.md) | 353 | `declaration-track:545b4319ca76123f1766b285676ba7ff79632a5dbfcd4641a9a3935e33507453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55eb7e38ac0639f7f704d81c3aa2d3c66f71079ed62da9dfcaa707e7f02c45b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CyclotomicTraversal/Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
