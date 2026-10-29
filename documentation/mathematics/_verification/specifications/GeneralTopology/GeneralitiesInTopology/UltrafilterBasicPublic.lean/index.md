# Verification target: Ultrafilter Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6630402da1f82eff60f11a532d87c6bfb0712e91",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6630402da1f82eff60f11a532d87c6bfb0712e91`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean.json)

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
| 1 | `theorem` | [finite_sUnion_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/finite-sunion-mem-iff.md) | 33 | `result-track:f7e6ea1ccefa5501b8d630d249a8d913721afd4b1ea933b3036248a4d6cea26b` |
| 2 | `theorem` | [finite_biUnion_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/finite-biunion-mem-iff.md) | 38 | `result-track:af49828cd7a0f1142f6872f2756eb87946e57ba7f9818a52445a63a6f339c942` |
| 3 | `lemma` | [eventually_exists_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/eventually-exists-mem-iff.md) | 43 | `result-track:f12bb589b8e4cb5afd204f9a387192475f477353fe91edd469f6d71bc3873064` |
| 4 | `lemma` | [eventually_exists_iff](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/eventually-exists-iff.md) | 49 | `result-track:39a38f07f308df2fb7fda09e2e0407aea2cb119f434dc7d7538bb3dd981effff` |
| 5 | `theorem` | [eq_pure_of_finite_mem](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/eq-pure-of-finite-mem.md) | 53 | `result-track:466f6a0b7e61c57af1c638cb3b201cfa4925230209a192cc52bc322d03b444ac` |
| 6 | `theorem` | [eq_pure_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/eq-pure-of-finite.md) | 58 | `result-track:b35ebc2260eb6ef512488894b845cce66ece10dab05625a3397fbd184d854114` |
| 7 | `theorem` | [pure_surjective](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/pure-surjective.md) | 61 | `result-track:60d3fafb46642bf4b6c91dcb3c551d64ee566f39199c86446e425f57c5ac2c29` |
| 8 | `theorem` | [le_cofinite_or_eq_pure](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/le-cofinite-or-eq-pure.md) | 64 | `result-track:434b63ebae15fba626d9bb70c8013a0715492531b2b3a5bf2cd2cc564048f050` |
| 9 | `theorem` | [exists_ultrafilter_of_finite_inter_nonempty](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/exists-ultrafilter-of-finite-inter-nonempty.md) | 70 | `result-track:953d878b26dff39986f2373b9640efc0810d7bd261e01085f5afab51020a026f` |
| 10 | `lemma` | [atTop_eq_pure_of_isTop](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/attop-eq-pure-of-istop.md) | 85 | `result-track:dd7df3e830d3925b4f5ac07f8207dd10f9d48ea2035331d7405c66bebe3d8a29` |
| 11 | `theorem` | [tendsto_iff_ultrafilter](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/tendsto-iff-ultrafilter.md) | 90 | `result-track:9cb5626e226cddbb22b7125a8c789efb1077921e47d9b22381007bc385ea7a14` |
| 12 | `def` | [hyperfilter](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/hyperfilter.md) | 99 | `declaration-track:092a5743f5514ffb0ff2fe50734eb80e35477c9933359b6bb9246e4fdc98ed4b` |
| 13 | `theorem` | [hyperfilter_le_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/hyperfilter-le-cofinite.md) | 104 | `result-track:b59ae8b0dc0e414f04a430347f5898df0ccee5217a9dde4cb0193ec38d44da7f` |
| 14 | `theorem` | [_root_.Nat.hyperfilter_le_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/root-nat-hyperfilter-le-attop.md) | 107 | `result-track:932190442ca1b967a0f89fc898886ec1e6bac3cb29dde8367132d0f84d5bfd78` |
| 15 | `theorem` | [bot_ne_hyperfilter](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/bot-ne-hyperfilter.md) | 111 | `result-track:58471e2e70d1c02ebbee1f16de2d1dae2337f3a9143aa835291aeb5acb323204` |
| 16 | `theorem` | [notMem_hyperfilter_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/notmem-hyperfilter-of-finite.md) | 114 | `result-track:4d860e10df90eafbb2a9ab81a4db7ac05a44f14e3f467e49ce1dc73dce45b025` |
| 17 | `theorem` | [compl_mem_hyperfilter_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/compl-mem-hyperfilter-of-finite.md) | 119 | `result-track:51f79c745b287ca808722737517b15f6f880bd1a44851d77f6751dc86aae2dfc` |
| 18 | `theorem` | [mem_hyperfilter_of_finite_compl](../../../../../GeneralTopology/GeneralitiesInTopology/UltrafilterBasicPublic.lean/declarations/mem-hyperfilter-of-finite-compl.md) | 124 | `result-track:874fce50a9ca311377d630fcdbe2102eb186ba7001a86b7378f098542c5e7f34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78c58fb2e9b4d43ec1e7a2be6f3ebee07590befda2a568bfeb0e3749c44686fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
