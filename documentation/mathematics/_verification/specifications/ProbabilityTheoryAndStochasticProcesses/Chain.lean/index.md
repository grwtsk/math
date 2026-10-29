# Verification target: Chain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0585c0d77db96ce68be1f891b997f183f16c3c4f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Chain/Variantd7b0accab2c491eb84a6a03ded8659192fe5add73a8e1f08a5fe5da7155c4c45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0585c0d77db96ce68be1f891b997f183f16c3c4f`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Chain/Variantd7b0accab2c491eb84a6a03ded8659192fe5add73a8e1f08a5fe5da7155c4c45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Chain/Variantd7b0accab2c491eb84a6a03ded8659192fe5add73a8e1f08a5fe5da7155c4c45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Composition` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Construction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Chain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/chain.md) | 22 | `declaration-track:7e29724e21733c8ddc5b7a95d0cfadb544082ea8ff99966ff6a0dec4dc94daae` |
| 2 | `def` | [composite](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-source-edition-3.md) | 31 | `declaration-track:a2d095b63759da2e0a4bfd65105e527fa9f6b8f32c4402b0c7f49ed6f1c91333` |
| 3 | `def` | [assumptions](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/assumptions.md) | 36 | `declaration-track:48f1f4fad6b9ffcf1f2110b45ff2dc9d614f2f6cbf43109750ccddee4d8064b1` |
| 4 | `def` | [property](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/property.md) | 41 | `declaration-track:bdf43214b9f9049dad379bd66c5b0f40c3553fb2b4914392109a7435240f1743` |
| 5 | `theorem` | [certified](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/certified.md) | 46 | `result-track:83f0efca4d8108d7053c2403fe0a93699f24a166946f461ad90c80bda6a26878` |
| 6 | `theorem` | [composite_nil](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-nil.md) | 53 | `result-track:34478b297537d60c8c1aa0e0f9ed6043528877858c9498d7d3c46e34c7ad56d7` |
| 7 | `theorem` | [composite_cons](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-cons.md) | 58 | `result-track:56db4953f51710028a9308136bd57cece4ce4db8e6438cafb7b0b0aa7acb6e28` |
| 8 | `theorem` | [composite_apply](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-apply.md) | 64 | `result-track:11bce4b46fa044373366bb84a0918788edc5dee4c264dc97ed77b753292a7c7c` |
| 9 | `theorem` | [assumptions_nil](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/assumptions-nil.md) | 71 | `result-track:8be7d715cfe70715742a266c9fc3295ad0773e5760f2494473ee74061ee831a1` |
| 10 | `theorem` | [assumptions_cons](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/assumptions-cons.md) | 76 | `result-track:10773742c618d91bfbda864571f6cef9d91c4d062957302be0e2e61b689ab2fa` |
| 11 | `theorem` | [property_nil](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/property-nil.md) | 83 | `result-track:cb40a1215c51f011b3c3bab1c1532d1ab6c7f688d66db1883464dfcc357fb030` |
| 12 | `theorem` | [property_cons](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/property-cons.md) | 88 | `result-track:44b2cae01f79d03b76a04e2643f0072a61ff22aa2436a42168967b202b8c2bfb` |
| 13 | `inductive` | [CompatibleChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/compatiblechain.md) | 103 | `declaration-track:cbd4c18212db5742cfb598af8d85ee8fc36e0b3fe8e431ffa7da1b6c6db9a34e` |
| 14 | `def` | [composite](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite.md) | 124 | `declaration-track:136503905b80c2993d4d5372ce981b22ac70168cd07d8067993db116fdf9a38d` |
| 15 | `def` | [certifiedComposite](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/certifiedcomposite.md) | 137 | `declaration-track:9a0e8acca700c859a86f315fab32fe07852d5e99e69b199b573c535866301a0c` |
| 16 | `theorem` | [certifiedComposite_spec](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/certifiedcomposite-spec.md) | 169 | `result-track:a61a57f9f1236fb135ad944b34c394d342e9fc1fb6ff38cb9f851471052af7df` |
| 17 | `theorem` | [certifiedComposite_coefficientSource](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/certifiedcomposite-coefficientsource.md) | 184 | `result-track:add6eccd27cab5e15a740fe1686a85f79f2ff9f43eed42cd8999483cb64628a4` |
| 18 | `theorem` | [certifiedComposite_coefficientTarget](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/certifiedcomposite-coefficienttarget.md) | 190 | `result-track:bbde79ffd99937b9b6b40fd6a23e838849589329495373c2c9c1882f92fbe85f` |
| 19 | `structure` | [InjectiveChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/injectivechain.md) | 201 | `declaration-track:5a422d8055e88e1b022cae2e8f319fa6d8fdf7b78eb550f4796a865bbe1abdd1` |
| 20 | `def` | [nil](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/nil.md) | 207 | `declaration-track:03124e6d5c30264c3830c02918ca8da27b8851b1f8e44447db4529eff6ed86c5` |
| 21 | `def` | [cons](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/cons.md) | 212 | `declaration-track:98f2cadc22d849273ed92fef64d0698f504277ff132020f09879fe2f1f49a9f7` |
| 22 | `theorem` | [composite_injective](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-injective.md) | 219 | `result-track:42c5d7240a8b2a9c2e72d4b62460dae79db11df382afa8661ddabb6e1a2d4d4b` |
| 23 | `structure` | [SurjectiveChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/surjectivechain.md) | 226 | `declaration-track:b9ef11b4db0fea9ece479efb1eaad66e54c34ec86f5774aca8b673d32f5bf5cc` |
| 24 | `def` | [nil](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/nil-source-edition-3.md) | 232 | `declaration-track:f8ac07498c60cf14a6a28dbf3c109eaa4ce649e152679bf6c708b400d7462a39` |
| 25 | `def` | [cons](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/cons-source-edition-2.md) | 236 | `declaration-track:af8d9c1b81ddd27867ef012b20ddb67ec7abcb0b7139d86f48fd7850d3572213` |
| 26 | `theorem` | [composite_surjective](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-surjective.md) | 243 | `result-track:ddd190e23361a0877ad8a543b9d1fadf061b9d52b372ec48940cac715e097061` |
| 27 | `structure` | [BijectiveChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/bijectivechain.md) | 250 | `declaration-track:b68dda6bfa339ae511f43476093ca21f2f3e5d55ce1e044dad6b923e2d636903` |
| 28 | `def` | [nil](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/nil-source-edition-2.md) | 256 | `declaration-track:f12a1281df52b1eca88729a1fc7f99a892d91f76fb19116df48b71878f98aa92` |
| 29 | `def` | [cons](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/cons-source-edition-3.md) | 260 | `declaration-track:f673876256f9218446b36eed4730d737a41eb575b3508abf67882b5c2f59b19f` |
| 30 | `theorem` | [composite_bijective](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-bijective.md) | 267 | `result-track:538e2e67984d4b2f40eca6b14b5dcac2d6f565a3bf6088af6575069a7b391346` |
| 31 | `def` | [compositeEquiv](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/compositeequiv.md) | 271 | `declaration-track:ef122f16d5dbdb9412d4ca4895a385506689f362022a0663a30b0d27835bc310` |
| 32 | `structure` | [RepresentationEnvironment](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/representationenvironment.md) | 279 | `declaration-track:71bf14a0d56f0da2000eb6e701a5c2090732abbf0113b65726a12dae9c53f454` |
| 33 | `def` | [comp](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/comp.md) | 286 | `declaration-track:75d572f237d98bbd0a2325cec5b5ab59eaf1db2f7f947619f85fd434d08dd916` |
| 34 | `theorem` | [comp_apply](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/comp-apply.md) | 293 | `result-track:9d7176a35c76f7a5db58e00d861e8d0de5748937637ec582c8c6ff3d471ec1b7` |
| 35 | `theorem` | [comp_independent](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/comp-independent.md) | 300 | `result-track:9ead6ba4e574e4791a72924e81d45ab19865a18804da797ed2107e9dad8c691e` |
| 36 | `inductive` | [ParameterizedChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/parameterizedchain.md) | 313 | `declaration-track:0ec7d310fba50fa6cf071e72f8335431b13a4a28f696444b07b55e4719d8a080` |
| 37 | `def` | [composite](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-source-edition-2.md) | 325 | `declaration-track:86d5d4633c0efa87211bc59313fb979b424ad8089bc3634f8db2611921a03971` |
| 38 | `theorem` | [composite_apply](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/composite-apply-source-edition-2.md) | 333 | `result-track:96f4437f4c565c5daca044885560aa04e50fff0f0728880d538717421b2c15cf` |
| 39 | `def` | [mapPublicCertified](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/mappubliccertified.md) | 354 | `declaration-track:4430da347179d508a0e7e94276a6a0b3b0768bc8cecb5f2dce72f8d3d1e4bf81` |
| 40 | `def` | [mapPublicChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/mappublicchain.md) | 369 | `declaration-track:681ffcca0246a4dc60a5809cb5203ef3b12a62434f6b2693f5686e0db713ee4e` |
| 41 | `def` | [mapPublicSurjectiveChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/mappublicsurjectivechain.md) | 384 | `declaration-track:31078070fc8321c69398dfc8cfd467320a540a66035f8d02670966933eca5c39` |
| 42 | `def` | [mapPublicBijectiveChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/mappublicbijectivechain.md) | 404 | `declaration-track:676df7d93772b369ad4b6e4bcc22d861a0d0e5c75381769bbe71c069cb5fe452` |
| 43 | `def` | [mapPublicBijectiveChain](../../../../ProbabilityTheoryAndStochasticProcesses/Chain.lean/declarations/mappublicbijectivechain-source-edition-2.md) | 424 | `declaration-track:c1712eff41a2b1418af53e8e2d9808e607b61ee8e7afc39648d3e55e1c611b85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f45588a232ee5b0a35c06605ce3a25e26e41ec8caf74e3c5ff82da55019c712 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Chain/Variantd7b0accab2c491eb84a6a03ded8659192fe5add73a8e1f08a5fe5da7155c4c45.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Chain/Variantd7b0accab2c491eb84a6a03ded8659192fe5add73a8e1f08a5fe5da7155c4c45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
