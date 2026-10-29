# Verification target: Pow Namespaced Public Nat Cast Pow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b87db2832eaa2cb5c9afeca9dc59f0faa7946dde",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant17e08526dd78e848c9e9346f154f0ab4c65662eaf9bc3a755149796999aab797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b87db2832eaa2cb5c9afeca9dc59f0faa7946dde`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant17e08526dd78e848c9e9346f154f0ab4c65662eaf9bc3a755149796999aab797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant17e08526dd78e848c9e9346f154f0ab4c65662eaf9bc3a755149796999aab797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/natcast-pow.md) | 30 | `result-track:91665dfa71ffcfa8fa525152fbbd37c99ac50c209cc4daffaf1d6908a8ce8dc5` |
| 2 | `theorem` | [negSucc_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/negsucc-pow.md) | 32 | `result-track:8861d2706ed04babc35a3901316869fe2bc4f7a65453bad731ce731f540ea6da` |
| 3 | `theorem` | [pow_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-zero.md) | 34 | `result-track:59c5a6f70c380d7ee1bc2be7b52a9b498098eed2496aecdef36f5fbefe1795be` |
| 4 | `theorem` | [pow_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-succ-source-edition-2.md) | 36 | `result-track:eae53dac10c714442803b76a559f5b06340113b00b575b2aff0ccd8a2b2d423f` |
| 5 | `theorem` | [pow_succ'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-succ.md) | 43 | `result-track:a5ef63bed17cd085517e8d1da2c0dc1a594f80e862fbce1b507f0f1a3b46a8c0` |
| 6 | `theorem` | [pow_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-add.md) | 46 | `result-track:8d7112edc843a53b56372313687c544a31bd899988471cfb355f71e662d6d0a8` |
| 7 | `theorem` | [zero_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/zero-pow.md) | 51 | `result-track:9cbd3c62bd08c1e6eceaee062f0946fea4818e41d802a987acb9a34532fbc7bf` |
| 8 | `theorem` | [one_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/one-pow.md) | 55 | `result-track:8f691bc7d886df667a40f8307bddee20eef963344408e050e6252a7e0e5889b4` |
| 9 | `theorem` | [mul_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/mul-pow.md) | 58 | `result-track:145055cf9052d76409145a7a8368916d91d1eecc3d3cd438adf469cec2e463aa` |
| 10 | `theorem` | [pow_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-one.md) | 65 | `result-track:03c3f91c8918fe04d23006b8b56fa942f35400a357cf970297420c1ba344dc9f` |
| 11 | `theorem` | [pow_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-mul.md) | 68 | `result-track:be8155de6e5ea6a3e7f59178eb0e1ba60738cf72f8568362439a145d639c67c7` |
| 12 | `theorem` | [pow_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-pos.md) | 74 | `result-track:dbd7cf7b5de53a336b6c319d3f36e9053c4d1298b20a67a341e639aeed4b5817` |
| 13 | `theorem` | [pow_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-nonneg.md) | 81 | `result-track:c3ff17b260408b5c62c66b864d3bfce325f0102c1d740273daad7035cd794eaf` |
| 14 | `theorem` | [pow_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-ne-zero.md) | 88 | `result-track:344edd1c663690cb008b13db26babc61218484342f82c73c1f003af1b03c0318` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:eec85b1a2d4b72696cf63f3b15d549e35fea36de2246bf191244a72b5e82f9eb` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/instance.md) | 97 | `declaration-track:0873eb43743bf71fb5999fe1ed6828bfde1f04757c40bc57916fa360bb4ff155` |
| 17 | `theorem` | [two_pow_pred_sub_two_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/two-pow-pred-sub-two-pow-source-edition-2.md) | 100 | `result-track:934016d182dad251143d18b789e6be8de5357dcedf7d2f7774bd343c63f49050` |
| 18 | `theorem` | [two_pow_pred_sub_two_pow'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/two-pow-pred-sub-two-pow.md) | 106 | `result-track:479f4f4f78c3a50485c7985319fc44c32d2c8c7935c0350e31bb2d2223148fb7` |
| 19 | `theorem` | [pow_lt_pow_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-lt-pow-of-lt.md) | 112 | `result-track:3df4f4a36783eedc85b35584ad57dc8dbb885c6f5ca5fc7eae5ceeb8a3ce18ae` |
| 20 | `theorem` | [natAbs_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/natabs-pow.md) | 119 | `result-track:166e3ff9a46accafc611b8899341b070e9ae70ac1352754663bc3b4c582ee9e6` |
| 21 | `theorem` | [toNat_pow_of_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/tonat-pow-of-nonneg.md) | 123 | `result-track:a98c30dcb173449de9a19b560016250ad670b1a694ae8699c7b7807c6fb3e0e7` |
| 22 | `theorem` | [sq_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/sq-nonneg.md) | 129 | `result-track:ae93e80a9b99a583a6e1535e88acc36fd79850f59fad401c6532183b3687b9a5` |
| 23 | `theorem` | [sq_nonnneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/sq-nonnneg.md) | 136 | `result-track:316218e84236cfb8c73ad14371e71782c5c56e3886930307e2106cdc3ae233cf` |
| 24 | `theorem` | [pow_nonneg_of_even](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/pow-nonneg-of-even.md) | 138 | `result-track:e35e0237218e73f3b1dd1c964de104541a5fd829389a2858129b193e17f0cd18` |
| 25 | `theorem` | [neg_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PowNamespacedPublicNatCastPow.lean/declarations/neg-pow.md) | 143 | `result-track:57161b0a1089fd71121229a4589c63f4a93424375cc4b3fd0eef2dc08de2b0a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f1652152c29800703056819c82a3f8e94e7857a3945257d64183ae16dc14592 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant17e08526dd78e848c9e9346f154f0ab4c65662eaf9bc3a755149796999aab797.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant17e08526dd78e848c9e9346f154f0ab4c65662eaf9bc3a755149796999aab797.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
