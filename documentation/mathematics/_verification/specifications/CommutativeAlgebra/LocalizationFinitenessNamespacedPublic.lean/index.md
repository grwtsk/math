# Verification target: Localization Finiteness Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7018b40eabf49ec528bd09b9d9924a3fd31165bd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7018b40eabf49ec528bd09b9d9924a3fd31165bd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalization.smul_mem_finsetIntegerMultiple_span](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/islocalization-smul-mem-finsetintegermultiple-span.md) | 63 | `result-track:a3e7799e027e40177e1e464dbd9747b203d3c127cc7a1b537fd36d5444e6b236` |
| 2 | `theorem` | [multiple_mem_span_of_mem_localization_span](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/multiple-mem-span-of-mem-localization-span.md) | 104 | `result-track:abbe8861e928221e44ed943e4bc40eeaae862109e888e2641b85b35674a7eb67` |
| 3 | `theorem` | [multiple_mem_adjoin_of_mem_localization_adjoin](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/multiple-mem-adjoin-of-mem-localization-adjoin.md) | 129 | `result-track:f6180a82211ca9fc3710acda0e081f52c92b5a072f950763947f19f2d7135d9e` |
| 4 | `lemma` | [of_isLocalization](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-islocalization.md) | 150 | `result-track:782e329771b33cfb6bca69c9f959b9ec7a8ec883bd0c6232edaccf64672880f0` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 167 | `declaration-track:bc738da26574f2da20644b3c2e364790b4f7c6c6615a0e1e67c89b954c87e193` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/instance.md) | 174 | `declaration-track:464375373cc977b2b309e83df1d2780e9c600e87b21a412214f1962ee6cf6e76` |
| 7 | `lemma` | [of_isLocalizedModule](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-islocalizedmodule.md) | 179 | `result-track:da5883cbbc1ab7a106531d097f2ef346ac6226f1085ac424c595915164dca283` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 185 | `declaration-track:5e871d6e4a9a0fe2d88d233986d8ece9aa008b7fcf8520905afcbb7ae4d27e40` |
| 9 | `theorem` | [of_localizationSpan_finite'](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-localizationspan-finite.md) | 201 | `result-track:912dc5f40d965464f980a7e5fdd790debe822b9034163d2a55a0046158895dab` |
| 10 | `theorem` | [of_localizationSpan'](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-localizationspan-source-edition-3.md) | 237 | `result-track:75466c72bcbcaa25b921e2d68b80fcd8f8a2c9ae0045c1172b8f7573df1354da` |
| 11 | `theorem` | [of_localizationSpan_finite](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-localizationspan-finite-source-edition-2.md) | 260 | `result-track:e7db09d1c851d5176f820cf9f28f02b85e3d167c68bd02d4cffab62b5f43584a` |
| 12 | `theorem` | [of_localizationSpan](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-localizationspan-source-edition-4.md) | 270 | `result-track:f36b1e5f4fb548044e9e15a73b6e10f2e311d44da30096f8ab953b37fb6e224b` |
| 13 | `lemma` | [of_localizationSpan'](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-localizationspan.md) | 287 | `result-track:684586a9ac49b736189392e6260b66ba54f9b5da543373d49d22325607f3037c` |
| 14 | `lemma` | [of_localizationSpan](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/of-localizationspan-source-edition-2.md) | 299 | `result-track:700ff19599b9bb014c04ae0f9c00072a6704c78c6729ed16aa287917c18a2928` |
| 15 | `lemma` | [localized'_fg](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/localized-fg.md) | 307 | `result-track:10378ed54fa9ce7bde9b200ca585fd0ceed861b89a5c7992f23c7dbeb3f061ce` |
| 16 | `lemma` | [localized_fg](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/localized-fg-source-edition-2.md) | 312 | `result-track:5ead1a9b062c78f15323c5ddb96108facd3b347a7b960a37d8f834fa04f9cf59` |
| 17 | `lemma` | [fg_of_localizationSpan](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/fg-of-localizationspan.md) | 323 | `result-track:32b0b6fc35bbdc2fb89c3461c1e6b9b48a5957330748899ded5f44ff5000e8c9` |
| 18 | `lemma` | [RingHom.ker_fg_of_localizationSpan](../../../../CommutativeAlgebra/LocalizationFinitenessNamespacedPublic.lean/declarations/ringhom-ker-fg-of-localizationspan.md) | 338 | `result-track:31481233ad7d179defc0dd9062ac789ed9d73253a109da85e8b537ab3f37adff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e827e1444212a0e9ab274454543b06f37ae8ee63ae90db0418c931c492f93904 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
