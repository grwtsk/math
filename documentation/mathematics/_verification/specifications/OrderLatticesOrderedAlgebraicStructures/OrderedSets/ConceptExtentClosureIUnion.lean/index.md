# Verification target: Concept Extent Closure IUnion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c6b85ef7ecb16a2debf6385c16c8e072e29c26",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant7dae6a41fb97aba356f36e965179eaf3673ec4c451871a663a0411853c7d5e60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c6b85ef7ecb16a2debf6385c16c8e072e29c26`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant7dae6a41fb97aba356f36e965179eaf3673ec4c451871a663a0411853c7d5e60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant7dae6a41fb97aba356f36e965179eaf3673ec4c451871a663a0411853c7d5e60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure.md) | 47 | `declaration-track:3338c1b8b78b9913a2e733d1fe42096765fe0847562ed54a4064ef23b665d82c` |
| 2 | `def` | [extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure.md) | 52 | `declaration-track:495f40f1df72e0a392e7f6fa05c65f290172373efd35426becd013e56ffa298f` |
| 3 | `theorem` | [subset_intentClosure_iff_subset_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/subset-intentclosure-iff-subset-extentclosure.md) | 57 | `result-track:9a5f9eb705ca82c27816745630b2789ee8db21b578624003302e7845095a32e1` |
| 4 | `theorem` | [gc_intentClosure_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/gc-intentclosure-extentclosure.md) | 63 | `result-track:fdfe82950fd96cafad9f8bf2fbd13aff519476eb8951ebd8fd7f84a4c91421be` |
| 5 | `theorem` | [intentClosure_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure-swap.md) | 67 | `result-track:d5b58180c2ef18792ab83043c7e08715d03cc66ec5bc96ccd4538d38c8574da0` |
| 6 | `theorem` | [extentClosure_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure-swap.md) | 70 | `result-track:ac3984fb1f1c04a4ca6ccd8d043b473d3ce7653d65d1f514ee0f72fb14f51498` |
| 7 | `theorem` | [intentClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure-empty.md) | 74 | `result-track:3b866d42d3371385ac7398b5d755f4b983c77df561e03abe6fac6f75da7b6285` |
| 8 | `theorem` | [extentClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure-empty.md) | 78 | `result-track:c3a5e8bd310207d126ec9a80a531196777f127a141ce168e28f86dce3043a68a` |
| 9 | `theorem` | [intentClosure_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure-union.md) | 82 | `result-track:5d9e5bffa51f3a4b2ed0d60ba9a33f3ccaaf95bc57c28320f8eb40f49786b007` |
| 10 | `theorem` | [extentClosure_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure-union.md) | 87 | `result-track:26287e0265caf3d3b801053d8e7b3ff6663ada61305722a2af25436b7af36c74` |
| 11 | `theorem` | [intentClosure_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure-iunion.md) | 92 | `result-track:19acc9456185e3266d221592dd539d26421159b2964f72195c3e053fb0ce19d6` |
| 12 | `theorem` | [extentClosure_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure-iunion.md) | 97 | `result-track:af110030eb880de62c25292bf0bd40d4c8a1d944cf8d5ff724aff79f1080a2a3` |
| 13 | `theorem` | [intentClosure_iUnion₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure-iunion-source-edition-2.md) | 101 | `result-track:227bf4ba1bb6982d89c41aef261d4f3870b8119ea92aff30a8fcd183c7e81dea` |
| 14 | `theorem` | [extentClosure_iUnion₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure-iunion-source-edition-2.md) | 105 | `result-track:fd07a7b59b6e49f6a904463b0a49c9199dbcc58398cf5777d9d9aa3e8c7835b4` |
| 15 | `theorem` | [subset_extentClosure_intentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/subset-extentclosure-intentclosure.md) | 109 | `result-track:54e44ab39fa7445dd1b9ca4e19a5bde3089bcab00c15a87d75c7c0e51c76606f` |
| 16 | `theorem` | [subset_intentClosure_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/subset-intentclosure-extentclosure.md) | 113 | `result-track:bafca90117b04b57faf4af8cb9f0fe0ae60fdc36897fc8b12ccc7dec03925a43` |
| 17 | `theorem` | [intentClosure_extentClosure_intentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure-extentclosure-intentclosure.md) | 118 | `result-track:55356078f6f2b22e31dd48b1ca2c3271a10dae37042431339bf82825bfea67d8` |
| 18 | `theorem` | [extentClosure_intentClosure_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure-intentclosure-extentclosure.md) | 123 | `result-track:0bb2fbf2654ca9752da889c3ec4b64ee29cc5fdbd7f8d8d9e2fbe4a0004857eb` |
| 19 | `theorem` | [intentClosure_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/intentclosure-anti.md) | 127 | `result-track:dec882f2758115c56830276abb48b43cba3acfa7853f0e1c745081c32f446e67` |
| 20 | `theorem` | [extentClosure_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/extentclosure-anti.md) | 130 | `result-track:b51e35ee88ff2ac6d980b5db078db3c8e74ed9409c606e09f90066545555570b` |
| 21 | `structure` | [Concept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/concept.md) | 141 | `declaration-track:f800e28dd6e25bd36ed21508301ffe61754a463afc698b44321c98329df8f11d` |
| 22 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/ext-source-edition-2.md) | 157 | `result-track:984a202abc258777c227d84240b93f875ed813fe9fad85f2359a35d3510ba886` |
| 23 | `theorem` | [ext'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/ext.md) | 164 | `result-track:5d478fa746b2922f1c19c556422eb7b6904e7d4957570599a69c38a10c0c4bac` |
| 24 | `theorem` | [fst_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/fst-injective.md) | 171 | `result-track:e400a9719d3a7a93a3bcabf9163ec28def60ccc6c9d5910bba69d71705ba04e1` |
| 25 | `theorem` | [snd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/snd-injective.md) | 173 | `result-track:250387223d781f9d447b8aa8582a1b7157fca2af3d17a880261e99f6f61f9868` |
| 26 | `instance` | [instSupConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instsupconcept.md) | 175 | `declaration-track:7ab89efa528caf3ad87aa7e8a24b6b6bf3aa1863e812da7d5b1547d88d399a6d` |
| 27 | `instance` | [instInfConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instinfconcept.md) | 184 | `declaration-track:7d509073206f058629a03a66391ddb42cbc5cccaa40017119ac09755a1616cfb` |
| 28 | `instance` | [instSemilatticeInfConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instsemilatticeinfconcept.md) | 193 | `declaration-track:30c11ec7f7878162617de4f3d73a5fab5a925a4ef46225f73e0402314f2e6470` |
| 29 | `theorem` | [fst_subset_fst_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/fst-subset-fst-iff.md) | 197 | `result-track:5515db0749ddaa6a92c25fc32b58ec07ade63a9a7c532dfe224976c8fbb619ce` |
| 30 | `theorem` | [fst_ssubset_fst_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/fst-ssubset-fst-iff.md) | 201 | `result-track:ecc1b73f7a4d6a62d857a412c57effa96210e631784220319b582afa7ef7bdb7` |
| 31 | `theorem` | [snd_subset_snd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/snd-subset-snd-iff.md) | 205 | `result-track:960783a37a72b638b327d011074ecbc8a7360566a701321b82029ad61209b2a9` |
| 32 | `theorem` | [snd_ssubset_snd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/snd-ssubset-snd-iff.md) | 213 | `result-track:7d65897b6fec3199713a2c613ebed7ce9608d629f7b903893a4aa192acc30775` |
| 33 | `theorem` | [strictMono_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/strictmono-fst.md) | 216 | `result-track:efeba70321849d8fee32cfc94271f26ce6d541fa73816cc93b4f789f4e88d404` |
| 34 | `theorem` | [strictAnti_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/strictanti-snd.md) | 219 | `result-track:80773c263be27cfcc5113be9e4a639b3ab2eaeac8fd7165e033a27b4fb8acb84` |
| 35 | `instance` | [instLatticeConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instlatticeconcept.md) | 222 | `declaration-track:5278aa7e6e3405e63c68ddce1611d07b55b0f0980be113f39849578c4a48e56c` |
| 36 | `instance` | [instBoundedOrderConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instboundedorderconcept.md) | 231 | `declaration-track:7003e390ee7bc5e5add1af9e686af439708e7d97da159337ead50f5b3978b285` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instance-source-edition-2.md) | 237 | `declaration-track:31cbf96dbb158aead5163381c023b40c8cab6363a739f61d3e94f94824012900` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instance.md) | 246 | `declaration-track:1717fea9d7b8b21d26bdbd18e2343327912bfa1fdcb12011e10306fbfd08eefc` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instance-source-edition-3.md) | 255 | `declaration-track:4b56bc8d4f2a5b45605a8154fb1864d864cb54166001c3d225a15d8ae3eb1038` |
| 40 | `theorem` | [top_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/top-fst.md) | 267 | `result-track:49c696ca99bb17244f34153033f2da9851fc1c89fd4ae0f6869b60ced8ef4815` |
| 41 | `theorem` | [top_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/top-snd.md) | 271 | `result-track:34207e06c1c41101c61a02f9da5b2da919a101656a1d4f8c298eb335eeb2819d` |
| 42 | `theorem` | [bot_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/bot-fst.md) | 275 | `result-track:d692e1a45caea434a65ad013f9dd25157233d630d23e2ec960bb6a4a99136d42` |
| 43 | `theorem` | [bot_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/bot-snd.md) | 279 | `result-track:827da657c8848fcaa80ed2a46732b7e67832378d88d99c30d332b52c28eea31d` |
| 44 | `theorem` | [sup_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/sup-fst.md) | 283 | `result-track:9a79d125a0d43b03f4b3c457e1a5a0fcad729e57942fb1d6d3122b5732b7cbe3` |
| 45 | `theorem` | [sup_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/sup-snd.md) | 287 | `result-track:32a04d2c7b675e708aa36e21379bf07b56bbac7f2a743d1be899b88829398e88` |
| 46 | `theorem` | [inf_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/inf-fst.md) | 291 | `result-track:7be71916904ada4a6b96afb777273de64bc31eafc8f57f351ebfc1831ebed7e6` |
| 47 | `theorem` | [inf_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/inf-snd.md) | 295 | `result-track:4e7af8003cecdbcf07dc18733da357c80480a08119ae55fa93847bd0d76e4078` |
| 48 | `theorem` | [sSup_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/ssup-fst.md) | 299 | `result-track:978a4de8e712304f4bb17e121d70cf86779578171862d133b744716472bb5597` |
| 49 | `theorem` | [sSup_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/ssup-snd.md) | 304 | `result-track:3699d34d32938a6a51a3d1753bed9c7454acd3f68fe0fa19fe60faf119e66fa2` |
| 50 | `theorem` | [sInf_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/sinf-fst.md) | 308 | `result-track:f53d1d98afd454bce0b6d28b289d7b21a16bd5b80aa1842ba52ee7912ab273d2` |
| 51 | `theorem` | [sInf_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/sinf-snd.md) | 312 | `result-track:0eff856cfa28053dc188200378ff5b8e314b1b0420ed9bb1cbfd3fca473df726` |
| 52 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/instance-source-edition-4.md) | 316 | `declaration-track:ae7a0eeb3f5b8de674fb76f8225be527b7d95fba5b08e0159e2e27c82d2aa48f` |
| 53 | `def` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/swap.md) | 321 | `declaration-track:ee845ad5e36210733444ea317714a7ac28493167367ccbbbf82d4b3785fbe418` |
| 54 | `theorem` | [swap_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/swap-swap.md) | 325 | `result-track:15b221fb6d3d0c0a89c26c77f6729328b00d43fca335f7eecc6fa5b6e28b4f92` |
| 55 | `theorem` | [swap_le_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/swap-le-swap-iff.md) | 329 | `result-track:5e645ec51b5c6d485026d71b57ca6188192de3c74138ace8b9f695d245e1421e` |
| 56 | `theorem` | [swap_lt_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/swap-lt-swap-iff.md) | 333 | `result-track:c246b4b8f80a04b340b7d7d79760505e3a52564019a84153008c1fa6a6d4ca9a` |
| 57 | `def` | [swapEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptExtentClosureIUnion.lean/declarations/swapequiv.md) | 338 | `declaration-track:39f58149061c578855c1a5d36dfec90adf311b7c1b3faa44ccc9224c6240fa7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8b2430adadc788b5ec7017f4f79cdae5a7d6d6dbc479f5d3c30cf61de7dba26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant7dae6a41fb97aba356f36e965179eaf3673ec4c451871a663a0411853c7d5e60.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant7dae6a41fb97aba356f36e965179eaf3673ec4c451871a663a0411853c7d5e60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
