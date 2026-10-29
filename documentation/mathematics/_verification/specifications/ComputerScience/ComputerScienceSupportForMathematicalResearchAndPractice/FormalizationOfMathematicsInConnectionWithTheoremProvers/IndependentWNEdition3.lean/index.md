# Verification target: Independent WNEdition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d81a210bf99d15ebf74df90acce4ac92f7042be9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d81a210bf99d15ebf74df90acce4ac92f7042be9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Arrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/arrow.md) | 16 | `declaration-track:af7dd3eecf30e12e73226e4b9e8a873e61124623392e745e95e07caa80be50c6` |
| 2 | `def` | [Arrow.expression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/arrow-expression.md) | 22 | `declaration-track:e354b464757f7ce15eb7788c16f56b0bd2ac39559e98d1c495baa6f1c913aa37` |
| 3 | `def` | [decodeArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/decodearrow.md) | 27 | `declaration-track:885f94d6e046ef5d1e7e144b795c950f87f2e3032f75ceb971952cb3a81407c5` |
| 4 | `theorem` | [Arrow.grammar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/arrow-grammar.md) | 31 | `result-track:d91db49256a6649c0c7919b6e0b04e502025a7c56e61152e38fcf3e859f9687c` |
| 5 | `theorem` | [decode_expression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/decode-expression.md) | 36 | `result-track:a7c3c6ae6de5912ebf381cc752c9593dc134ca5b9e27efa4724e33be74ad5967` |
| 6 | `theorem` | [decode_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/decode-rename.md) | 43 | `result-track:d7541c1ff7958a2321719c4d08756b7c2bd3e4f5575bde307be57386ccfc1e41` |
| 7 | `theorem` | [wn_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/wn-rename.md) | 53 | `result-track:0999572c8e95f766198e9a1721b64d7b808e19a6740164a454d29437c620961e` |
| 8 | `theorem` | [wn_prepend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/wn-prepend.md) | 58 | `result-track:f16e2cf7958656f99c50575a07dc0caa2afa95f8958099235d84ecf113bfecaa` |
| 9 | `theorem` | [wn_lam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/wn-lam.md) | 63 | `result-track:d4496d57becef572980598ec36531d4c17eafd5a54335f25b07c21f3fa5aeec7` |
| 10 | `theorem` | [wn_pi](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/wn-pi.md) | 71 | `result-track:7716b1c770f9b47fa55a8727c9fb6f6d16a102a71f043c37974d04e3476f2440` |
| 11 | `theorem` | [neutral_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/neutral-rename.md) | 79 | `result-track:15f87a21c9f890728fd3cd4628de40dc023e5b128428d52871925109a38be793` |
| 12 | `theorem` | [neutral_step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/neutral-step.md) | 85 | `result-track:2c497b1525bf57262c5ad5db967dac358e361265b2fd28fe6056203a35cac2b3` |
| 13 | `theorem` | [neutral_reduces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/neutral-reduces.md) | 95 | `result-track:ffe5ae89c7bcb926b37364bf9040cdf2b93c84a256888214e8ef7d21071e4559` |
| 14 | `theorem` | [wn_neutral_app](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/wn-neutral-app.md) | 101 | `result-track:1e1cd8fa9f497e02dd74e3384e2963defdacd1f36cca16e8f694f3eb09aa01bf` |
| 15 | `def` | [Reducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducible.md) | 116 | `declaration-track:83fb1f051dda2bf4396a0c08ff8b32f1f708416d84eeb9fcc3595715cc50b9f0` |
| 16 | `theorem` | [reducible_wn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducible-wn.md) | 122 | `result-track:292139e3723f20f0c1e1ea6a84315b7d84e2334a0fea0c98c012a1999f8def1d` |
| 17 | `theorem` | [reducible_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducible-rename.md) | 128 | `result-track:0a422d3e864e34b84a7ad3ff579ee9d666066d8be48417e6aa683854c86f8e7b` |
| 18 | `theorem` | [reducible_prepend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducible-prepend.md) | 140 | `result-track:fa1e171607e7327ce7a6c4ce168c80ab469da0545e2fa01ebeee5ebc5e9cae5b` |
| 19 | `theorem` | [reducible_neutral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducible-neutral.md) | 151 | `result-track:41b0ff4287239cd56064347c0693891792f61534378f2d31c3299775c335216f` |
| 20 | `theorem` | [reducible_var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducible-var.md) | 162 | `result-track:507def95018e8f1cd9f4f99183678afd1633ff599b32126acf19d4b665b47615` |
| 21 | `inductive` | [ArrowTyping](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/arrowtyping.md) | 167 | `declaration-track:7a378914399dad9636d30d098b8e9384ec8f0e3c39e17e3d3e47b1025890ff2d` |
| 22 | `def` | [ReducibleEnvironment](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducibleenvironment.md) | 179 | `declaration-track:8cf4b6583274fab537f284a963db5e3c0f44783d1caaa573412f7e3eee33f529` |
| 23 | `theorem` | [reducible_environment_lift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/reducible-environment-lift.md) | 182 | `result-track:20d142cad8ef35e87085d464a5ec3d36d98e8264aa30b2d0196cb8c794bf96ef` |
| 24 | `theorem` | [ArrowTyping.reducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/arrowtyping-reducible.md) | 196 | `result-track:1c4fb9de52765740729191581dfd248f46406efc96a2d577f64b5598b053ffdb` |
| 25 | `theorem` | [ArrowTyping.weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/arrowtyping-weakly-normalizing.md) | 251 | `result-track:35f980f50e9e4bf1b99b87ba1d167017c8b9dc00611407ffccfb86dffb23e9e9` |
| 26 | `theorem` | [BaseArrowType.ne_kind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/basearrowtype-ne-kind.md) | 258 | `result-track:04dd4f129ce85980482102194a40531f1888b34467b52506fd3be188b4cbccf9` |
| 27 | `theorem` | [BaseArrowType.sort_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/basearrowtype-sort-unique.md) | 267 | `result-track:a0876c79fe21b3cb4cb2896eac39c5be1b2902831ad2c59d0bee8c9e70fb8f6f` |
| 28 | `theorem` | [lookup_sorted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/lookup-sorted.md) | 279 | `result-track:e317b6f076be2093738bbc02aecc5aa6204ff9183a7f396be1b0d3547065288c` |
| 29 | `theorem` | [lookup_decoded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/lookup-decoded.md) | 291 | `result-track:091a4203de73e7158181034977138532fbfa3df23d6a4f80cb86d99a6dde134d` |
| 30 | `theorem` | [sorted_convert_to_grammar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/sorted-convert-to-grammar.md) | 301 | `result-track:78854f5215e1cbe8c54bd70801a0ec601ae639cbcc338065c8df9c8d2bb5aec2` |
| 31 | `theorem` | [arrow_typing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/arrow-typing.md) | 316 | `result-track:21962af648e9e7c626d0ce333cb92841f7684ea679f788aea1ca892a9f7a678c` |
| 32 | `theorem` | [typed_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/typed-weakly-normalizing.md) | 380 | `result-track:948e1816de60c591f6c6103a6b0cc2713f6d091b2bf73271904aa5510c5171ff` |
| 33 | `theorem` | [monomorphic_arrow_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition3.lean/declarations/monomorphic-arrow-weakly-normalizing.md) | 417 | `result-track:e97eda4a0ddc786d6d6ec1e01f0516344f3f60a6927258a09a5ac63c4f705f67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcb5c5fc6bc47ba52b6ed2bbd44cabedb1da809893129e22c6a63a1ab1747a48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
