# Verification target: Source Gram Quotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf8a2f20f6946f9ca5de6a55996135285ff0796a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceGramQuotient.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceGramQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf8a2f20f6946f9ca5de6a55996135285ff0796a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceOrbitCoordinates` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GramQuotient](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gramquotient.md) | 40 | `declaration-track:b5d7663964dc5df7001cc95514e5f06bf94f19932b30263411c04a000c25693b` |
| 2 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/instance-source-edition-3.md) | 43 | `declaration-track:c443f8029c2d3d802d3f37e3be0ec6dba06723fa79bb63a79c7f2b0e3f82e965` |
| 3 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/instance.md) | 46 | `declaration-track:1a68735246cd727d19cf2217c9c012822d649c71e356c82b6c1a1b0c9d4b2fde` |
| 4 | `def` | [sourceEquiv](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/sourceequiv.md) | 50 | `declaration-track:c1f5ebc77a8a2117a31a4934aa14a7e897792c2729cb5055fdee97c34235890c` |
| 5 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:b1e9ad35434db9aeef2306ae305512bb06500af6b0371520336230f5cd25fab3` |
| 6 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:e2ce9d5371e4136bc0b259ff44ad4fe472a5d73c6276d183a0a22d0c38b663f2` |
| 7 | `def` | [gramMk](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/grammk.md) | 60 | `declaration-track:8dc972b49c6ed9ac7332ca937ae8c030f1e33f03c7582358579376be7ce89435` |
| 8 | `def` | [sourceIsometry](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/sourceisometry.md) | 64 | `declaration-track:694e3c1e385655bdd424c4b9f75e593c8e76f3fd4a6228ddfa10a6fbb7932999` |
| 9 | `theorem` | [gram_inner_self_eq_zero_iff](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gram-inner-self-eq-zero-iff.md) | 70 | `result-track:e269410be087ab2b16110bf9e7a2c1dd513250620cde88de9a8c2aec48a44dff` |
| 10 | `theorem` | [gram_inner_mk](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gram-inner-mk.md) | 74 | `result-track:6ec1ac20361a63d5eef38470faa1a014f1e844dee52ca49090c2e1a453c54826` |
| 11 | `def` | [signedForm](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/signedform.md) | 79 | `declaration-track:b6f513f3bc9f806fdb10d6a4be67ac6d2b190456dff362647bf27d6560a0e4e0` |
| 12 | `theorem` | [signedForm_mk](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/signedform-mk.md) | 83 | `result-track:63e76782b606e3e2be52c5bae68e795988ba14a321beb4cd01b3b76d8b328bbe` |
| 13 | `theorem` | [reflection_inner_symmetric](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/reflection-inner-symmetric.md) | 89 | `result-track:d32927f3e1bec1a8e4cd3664642a54563b9ee1d1fefb5276e35152011b34b64b` |
| 14 | `def` | [compressedReflection](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/compressedreflection.md) | 95 | `declaration-track:2269f50fbfbcafdffbe87f7406fc0ddb65585b4901696c79e46e2b4860ca825e` |
| 15 | `theorem` | [compressedReflection_pairing](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/compressedreflection-pairing.md) | 99 | `result-track:1b4b5f1d73edc216d5075b6ce059c85707ace092439b7382fe8af4ed1db17201` |
| 16 | `theorem` | [compressedReflection_symmetric](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/compressedreflection-symmetric.md) | 104 | `result-track:24b9faba8786915a40605c1cbd4b6ad1117a8cd6edd9135c6f3af61d1db9cc19` |
| 17 | `theorem` | [compressedReflection_selfAdjoint](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/compressedreflection-selfadjoint.md) | 112 | `result-track:36220ed2d017b76cc0f82a66842e1ec770ba4b04f5eae77d1b848554560b0af8` |
| 18 | `theorem` | [compressedReflection_norm_le](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/compressedreflection-norm-le.md) | 116 | `result-track:45cf2b9690399007577d0d76b90b8bc852a217aa5f47d7cfcb1c7f44d1d1a55a` |
| 19 | `theorem` | [compressedReflection_opNorm_le](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/compressedreflection-opnorm-le.md) | 121 | `result-track:15fa6e954f030d55779c46f568a86520882484c4fef575be298cbee5fafd4c91` |
| 20 | `theorem` | [compressedReflection_involutive_of_invariant](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/compressedreflection-involutive-of-invariant.md) | 127 | `result-track:b033f448ad2a7e1e18e0aa6a85aab765fd3ddb097a052d638de559d3c7a69864` |
| 21 | `theorem` | [signedForm_eq_compression](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/signedform-eq-compression.md) | 138 | `result-track:77b60177a9cfde9265fed8c8f9ee89f6b216b39ee2ae0b9f3f891b2a38b16dc0` |
| 22 | `theorem` | [augmented_gram_nonneg](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/augmented-gram-nonneg.md) | 145 | `result-track:e45b4c8e4c2304c492f4b62e3423409d4cf2747584f66309259401517998f8ed` |
| 23 | `theorem` | [gram_plus_minus_reflection_nonneg](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gram-plus-minus-reflection-nonneg.md) | 162 | `result-track:485c5ddcfb245cd908e7533f17f9e1fc2afddc8e0c2edded3354d5b3e21c705f` |
| 24 | `theorem` | [common_source_uniqueness](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/common-source-uniqueness.md) | 173 | `result-track:01951db6889e0f7a3234b96dd6768d63bd2a94587d20c49bd21f147a4cd64634` |
| 25 | `def` | [gramRefinement](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gramrefinement.md) | 178 | `declaration-track:bea4b75d87aacaa66ee0437732a2230b0f638b3063c084d08c169255b5b17d51` |
| 26 | `theorem` | [gram_refinement_isometry](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gram-refinement-isometry.md) | 182 | `result-track:de37fd4b5695d2e7dedb4dd9795802326d85d6a82c33e317848da6c9c327abcc` |
| 27 | `theorem` | [gramRefinement_injective](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gramrefinement-injective.md) | 187 | `result-track:e1f9e3e8f322d26337b3b2fa908ecbcf87545b85baa5038940aa3c1d2e781b38` |
| 28 | `theorem` | [gramRefinement_signedForm](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gramrefinement-signedform.md) | 190 | `result-track:5220e4d21b6334d9b9a40d1bfdfb6d4bd5a2935701eb23354157de20c4b0b2e8` |
| 29 | `theorem` | [gramRefinement_cocycle](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gramrefinement-cocycle.md) | 195 | `result-track:1358609262340586e876e957348bc163adffc666e0c16748511c2f223b6ef529` |
| 30 | `theorem` | [gramRefinement_surjective_of_range_eq](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/gramrefinement-surjective-of-range-eq.md) | 201 | `result-track:91274774ddb88d8b67e5884d1f2a8c58c1beb4a7960453f84d03ccf361f519e2` |
| 31 | `theorem` | [actual_source_compression_involutive](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/actual-source-compression-involutive.md) | 218 | `result-track:0f29760f762870cb0b129609f0a886ee669d76bcd1c55f95e17a7e42ecfc2bad` |
| 32 | `theorem` | [actual_source_correlation_complex](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/actual-source-correlation-complex.md) | 227 | `result-track:0196013f278e5250c3ca7e4c951a216e973e249876c76b07562dc89fbb05c08c` |
| 33 | `theorem` | [actual_source_gram_entry](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/actual-source-gram-entry.md) | 247 | `result-track:9fa1afffcc688d02c57755a62b2dafd358229877b6db8d0723bac9295c366b05` |
| 34 | `theorem` | [actual_source_reflected_entry](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/actual-source-reflected-entry.md) | 257 | `result-track:f4ff99645c6f7b03bf0fd2df283c8b2847bdc761b3ffd73554d7e482ce1ad789` |
| 35 | `theorem` | [actual_first_prime_even_channel](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/actual-first-prime-even-channel.md) | 269 | `result-track:dc0fc181dbe1520b5d318a9978cc17c2213b413019f49052e012a5238201cd05` |
| 36 | `theorem` | [actual_first_prime_odd_channel](../../../../MeasureAndIntegration/SourceGramQuotient.lean/declarations/actual-first-prime-odd-channel.md) | 279 | `result-track:89153a4430a4a2d850629619e8b4b9d72e5ca05dd6ccf8b8eb532a03fb33cfed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12ec636c4bd4ac1b793c099c226742229293d263a51286957555e1cf6f9d7018 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
