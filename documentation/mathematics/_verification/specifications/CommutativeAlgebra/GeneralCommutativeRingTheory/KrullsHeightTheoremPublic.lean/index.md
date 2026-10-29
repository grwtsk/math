# Verification target: Krulls Height Theorem Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fa404f1e229a5dc7850ad185ac2c9594fd7418f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fa404f1e229a5dc7850ad185ac2c9594fd7418f`.

Source path: `GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsLocalRing.quotient_artinian_of_mem_minimalPrimes_of_isLocalRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/islocalring-quotient-artinian-of-mem-minimalprimes-of-islocalring.md) | 48 | `result-track:219702c7dd85d8de7b908ae9ce80aa5251e640944dc03a67a0c0bb0581678ad5` |
| 2 | `lemma` | [Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes_of_isLocalRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-one-of-isprincipal-of-mem-minimalprimes-of-islocalring.md) | 60 | `result-track:49efd161aa18bf1ee2ef99d96fca7fffa410208e43123f5bec0906e33b0696a0` |
| 3 | `lemma` | [Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-one-of-isprincipal-of-mem-minimalprimes.md) | 108 | `result-track:efe485ffce005afc39be23a8e4c01018356ccf62784fed835900f8473f0c0cb2` |
| 4 | `theorem` | [Ideal.map_height_le_one_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-map-height-le-one-of-mem-minimalprimes.md) | 118 | `result-track:881b75d33766a406fa36a324901e8e1ea21f1f4139d7724b60fa2b8932ccb607` |
| 5 | `lemma` | [Ideal.height_span_singleton_le_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-span-singleton-le-one.md) | 132 | `result-track:557cf95e3991d355eb2fbda0dc8f9e0aed229c3a65e530bd665623e131548189` |
| 6 | `lemma` | [Ideal.height_span_singleton_eq_one_of_mem_nonZeroDivisors](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-span-singleton-eq-one-of-mem-nonzerodivisors.md) | 140 | `result-track:54dea304b666006ce32b0a540e877b9577d3bf2e0019e359e8656c1cffae7ffc` |
| 7 | `theorem` | [Ideal.mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-mem-minimalprimes-span-of-mem-minimalprimes-span-insert.md) | 148 | `result-track:df6b3beb3ac6df28553c73866b40fd06dfdf7bd0a1b1af8e23abc439d0ceda46` |
| 8 | `lemma` | [Ideal.height_le_spanRank_toENat_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-spanrank-toenat-of-mem-minimalprimes.md) | 185 | `result-track:83f5bc336a337780ca67d810d0eccce12c4f9621c07a1e7bad20189766b2bc45` |
| 9 | `lemma` | [Ideal.height_le_card_of_mem_minimalPrimes_span_finset](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-card-of-mem-minimalprimes-span-finset.md) | 239 | `result-track:a7785904f41235e03cd7703e13a24c5f2b219770cab29dc4f8dd50a3ca01de55` |
| 10 | `lemma` | [Ideal.height_span_le_card_of_span_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-span-le-card-of-span-ne-top.md) | 246 | `result-track:64192bc969d5e414e00b23c1565a5519902cf9e5a146cfe55b6461f4099021e9` |
| 11 | `lemma` | [Ideal.height_le_ncard_of_mem_minimalPrimes_span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-ncard-of-mem-minimalprimes-span.md) | 251 | `result-track:b6eb9d3e3c5b3e1b53424a350bffbc5641bb81162b667da3eff69d0ae846f484` |
| 12 | `lemma` | [Ideal.height_span_le_ncard_of_span_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-span-le-ncard-of-span-ne-top.md) | 261 | `result-track:fc7a06e144b6eeb80148c48ca4ae9169d7caad99641d112c25dff347ce407372` |
| 13 | `lemma` | [Ideal.height_le_encard_of_mem_minimalPrimes_span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-encard-of-mem-minimalprimes-span.md) | 266 | `result-track:f0df3c232a94791d5387a06ecc6e64e4f9f75f0c2aa9f183d2bd3432162f6d17` |
| 14 | `lemma` | [Ideal.height_span_le_encard_of_span_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-span-le-encard-of-span-ne-top.md) | 272 | `result-track:a5a3bf49ca791bc590aa68067b9dacea69b408be361747e2b353c10ee8df7367` |
| 15 | `lemma` | [Ideal.height_le_spanRank_toENat](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-spanrank-toenat.md) | 279 | `result-track:5278a43688058b12efe59c270091bea54c4bc880ab8ac3efa8f201fe3fd6b751` |
| 16 | `lemma` | [Ideal.height_le_spanFinrank](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-spanfinrank.md) | 285 | `result-track:d2d17ac323a60d82e9680943692e68c8fcd690477c5d7bcc9a495e7f3333020d` |
| 17 | `lemma` | [Ideal.height_le_spanRank](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-spanrank.md) | 291 | `result-track:d85019e9fe903bb6d6b17aedb05a9670764ea090f9639fb246176301431439f9` |
| 18 | `instance` | [Ideal.finiteHeight_of_isNoetherianRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-finiteheight-of-isnoetherianring.md) | 297 | `declaration-track:ce1ce4cfed8a5c7518e5b6dda2734e9eebbffcf9f698533e846192565a76de84` |
| 19 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/instance.md) | 301 | `declaration-track:1636efd4578e028a7b3cb58aaeb0f3801d3d6157d51d4f31a9397416abafb4b5` |
| 20 | `lemma` | [Ideal.exists_spanRank_eq_and_height_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-exists-spanrank-eq-and-height-eq.md) | 311 | `result-track:9256dafc4ae3f4bd42ba9e3de95bfdec89dd681566784dbdf3003fb0cd5e68e3` |
| 21 | `lemma` | [Ideal.height_le_iff_exists_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-iff-exists-minimalprimes.md) | 326 | `result-track:fe37e6b6649ec108852890284e71336d4681b6b5f3e9e96f8d34c754996adf81` |
| 22 | `lemma` | [Ideal.exists_finset_card_eq_height_of_isNoetherianRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-exists-finset-card-eq-height-of-isnoetherianring.md) | 340 | `result-track:c5ec35c84d2af4aa25a40207ddedced73a4cfcacbc690f35c2460b55f390e3ad` |
| 23 | `lemma` | [Ideal.height_le_height_add_spanFinrank_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-height-add-spanfinrank-of-le.md) | 356 | `result-track:7dbb1b1e1ad82c7ef4fb14e40625c8e2fb3885395f06d4df730de447f6363eb1` |
| 24 | `lemma` | [height_le_ringKrullDim_quotient_add_spanFinrank](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/height-le-ringkrulldim-quotient-add-spanfinrank.md) | 384 | `result-track:53768aca5ae63691b0fdf0bc60880083c278993d98f18ccd0210dee77f39f318` |
| 25 | `lemma` | [ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ringkrulldim-le-ringkrulldim-quotient-add-spanfinrank.md) | 393 | `result-track:72a84b6471c47be0128defa8060e522af0d039933f96ef1ab0d7b44b6b2443d8` |
| 26 | `lemma` | [Ideal.height_le_height_add_encard_of_subset](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-height-add-encard-of-subset.md) | 404 | `result-track:4c4b9d8c0c6dfd6c63bb197b7b99cadf5531a90e170759c6d9ac2de61dc550e6` |
| 27 | `lemma` | [Ideal.height_le_ringKrullDim_quotient_add_encard](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-ringkrulldim-quotient-add-encard.md) | 411 | `result-track:43a81ba6cfec53f236b6801491add5ef10ab2376b498224230d8cb98d5094460` |
| 28 | `lemma` | [Ideal.height_le_height_add_one_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-height-add-one-of-mem.md) | 417 | `result-track:c39a16d9afbf7cb232f4c9c4cd1ee9ee358c8f035ccee62641a35d56c2b61298` |
| 29 | `lemma` | [Ideal.height_le_ringKrullDim_quotient_add_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-ringkrulldim-quotient-add-one.md) | 422 | `result-track:ef2268176da26b7b28b0a35da32efd6d0adcef589e79338f842ac5686eab193c` |
| 30 | `lemma` | [ringKrullDim_le_ringKrullDim_quotient_add_encard](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ringkrulldim-le-ringkrulldim-quotient-add-encard.md) | 427 | `result-track:998eaba5ecff272c79dd730b8cc3c515f708895cb2fa9782819b233ec5e05faf` |
| 31 | `lemma` | [ringKrullDim_le_ringKrullDim_quotient_add_card](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ringkrulldim-le-ringkrulldim-quotient-add-card.md) | 433 | `result-track:bcce288834d9d60a1d6640ca9e0b97ba7c43e5c9868d4e0854e8e98f210996d2` |
| 32 | `lemma` | [Ideal.height_le_height_add_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-le-height-add-of-liesover.md) | 450 | `result-track:cbf61bbb7fb8b9c922c16aa20d37c0df77026a261f5b9f13438df35993b034a6` |
| 33 | `lemma` | [Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ideal-height-eq-height-add-of-liesover-of-hasgoingdown.md) | 487 | `result-track:d267e93802d2ffbc4b1c277e9086207d5370e82ef9c6d1722dc15ab1bf0a0a0a` |
| 34 | `lemma` | [ringKrullDim_le_spanFinrank_maximalIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremPublic.lean/declarations/ringkrulldim-le-spanfinrank-maximalideal.md) | 515 | `result-track:f32c472333cd504da29575b0654110b44b4dabcf159ad7935151e2a331be3545` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a0e8d83951ae64967c55ec71e0d4d12750a81c87e2466de335874a8bf353186 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean","GRWTSK/_verification/specifications/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
