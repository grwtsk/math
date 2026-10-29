# Verification target: ENat ENNReal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9197d4bff3dd6130573e9e1f83229c1c1fea7a9a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ENatENNRealPublic.lean/index.md) · [Full source](../../../../RealFunctions/ENatENNRealPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9197d4bff3dd6130573e9e1f83229c1c1fea7a9a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557.lean.json)

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
| 1 | `def` | [toENNReal](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal.md) | 31 | `declaration-track:32b06ec5a37803f35a4dd8b6824d49987528f1250b9e142952a799b4a0af5553` |
| 2 | `instance` | [hasCoeENNReal](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/hascoeennreal.md) | 33 | `declaration-track:f929ba3f88ef8dc573f9bc6c33bded24abdeece9450281f5c7b56ac10f978b28` |
| 3 | `theorem` | [map_coe_nnreal](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/map-coe-nnreal.md) | 36 | `result-track:bb506ba4b34a29a7a3b3b721d25bf7bfffa63c58bfe001ded313205749552a4a` |
| 4 | `def` | [toENNRealOrderEmbedding](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennrealorderembedding.md) | 41 | `declaration-track:61903af8915d7cf4fcb7c87ab3fd3585665a6eb8fa409725f92e213d710928e4` |
| 5 | `def` | [toENNRealRingHom](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennrealringhom.md) | 46 | `declaration-track:5b42b72e2e0e0ef8c0c0ffde5c2b33dfbf429c2a75c74b0ef4cd5d9c50ae8e99` |
| 6 | `theorem` | [toENNReal_top](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-top.md) | 50 | `result-track:95997edfa8005679e017191b76e66f593ff0780ece40db0b87c8aa635da60c9e` |
| 7 | `theorem` | [toENNReal_coe](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-coe.md) | 54 | `result-track:d4da2a424673e408256c6ac0745eba0f5517c59a658827498126a89e82646d73` |
| 8 | `theorem` | [toENNReal_ofNat](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-ofnat.md) | 58 | `result-track:010922bc6559f9af557a8a6221c9cb99a8d415337fd35a39c0dbe1f34f96db11` |
| 9 | `theorem` | [toENNReal_inj](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-inj.md) | 62 | `result-track:f9894daf0abe2b1db5525ec6eb1817da1ef9c2fc4cf4cf7c60578c6b5e7339d1` |
| 10 | `lemma` | [toENNReal_eq_top](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-eq-top.md) | 65 | `result-track:04e5ec8b4c43d7e82c58ec3a53002c4fac59823c2ebb45d0eea13a676c11c45b` |
| 11 | `lemma` | [toENNReal_ne_top](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-ne-top.md) | 66 | `result-track:509ce9ba511ba0896729105645ac5da0577a668e079df6fa75076d59e8bf1dc9` |
| 12 | `theorem` | [toENNReal_le](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-le.md) | 69 | `result-track:017d6f00a0d3e271c9e75bd848564a6e714ac1626194f778dc0649c98254615c` |
| 13 | `theorem` | [toENNReal_lt](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-lt.md) | 73 | `result-track:7d3327231f807df19e6f81d73d33b359b77eb1aee1060f675e9f3eddea9b9161` |
| 14 | `lemma` | [toENNReal_lt_top](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-lt-top.md) | 77 | `result-track:a4f04af1582a0331ff5e7fcbc0097ba845b866ae7835496f3126f09600cf2033` |
| 15 | `theorem` | [toENNReal_mono](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-mono.md) | 80 | `result-track:76a75b729f2ace84976d074e9bded668d1a8fbdcd5d55b0b400c375939bafd84` |
| 16 | `theorem` | [toENNReal_strictMono](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-strictmono.md) | 84 | `result-track:f0f4b85a69dd741309ed0aad40e647b700d6a005f841c6549494ea8cfed754d6` |
| 17 | `theorem` | [toENNReal_zero](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-zero.md) | 88 | `result-track:f38b082ad6e72c419d0b9ca7f205121374a0e1730472d6beea4378c8d0fe499f` |
| 18 | `lemma` | [toENNReal_eq_zero](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-eq-zero.md) | 91 | `result-track:38f1b22167f9a970286382887a9e58d52883e98052c73a3f69e095ca67e89c69` |
| 19 | `theorem` | [toENNReal_add](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-add.md) | 94 | `result-track:dc23f61af965e44e5bfe78011790beaebadb1a63bcb5f39a1f073ccf8365a810` |
| 20 | `theorem` | [toENNReal_one](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-one.md) | 98 | `result-track:f676ea15f1b0478c69f3da1bf0fddb1ff35131e262437f007c852a6bec3e7505` |
| 21 | `theorem` | [toENNReal_mul](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-mul.md) | 102 | `result-track:e464ed7bc8334e438ccfe6963957e9255d44c02f61ccf5480942ced253ce120c` |
| 22 | `theorem` | [toENNReal_pow](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-pow.md) | 106 | `result-track:909482377ab2dccf2e3cc4966a52b81d91c35f85886d4b3e6cef8bf8abae2493` |
| 23 | `theorem` | [toENNReal_min](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-min.md) | 110 | `result-track:dccd9a267fc46771947baccf1d01793b756f025d270a23721392304d216dae5f` |
| 24 | `theorem` | [toENNReal_max](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-max.md) | 114 | `result-track:a89ee7a4f72293873040d853bd12a019e86a990420a4fdf1b2a6cdbe461a4460` |
| 25 | `theorem` | [toENNReal_sub](../../../../RealFunctions/ENatENNRealPublic.lean/declarations/toennreal-sub.md) | 118 | `result-track:d75ae451580dac6991b96e055645665603a00fbbd65c5ebed41355919e1f992d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ab8b3f7efd07ad9b204091bc1706e171f958d907f49f623e62c08f51cc94487 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ENatENNReal/Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
