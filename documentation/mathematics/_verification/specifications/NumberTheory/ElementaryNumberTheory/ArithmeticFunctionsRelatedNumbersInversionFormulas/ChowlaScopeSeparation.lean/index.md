# Verification target: GRWTSK.NumberTheory.Moebius.ChowlaScopeSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50dcb6cd73dded101f0623a42f16756ce5e7ccab",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50dcb6cd73dded101f0623a42f16756ce5e7ccab`.

Source path: `GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ChowlaScopeSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointInformationLossConnections`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EndpointInformationLossConnections.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FamilyAllPrefixBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/familyallprefixbound.md) | 45 | `declaration-track:d9ae8f26970e3f1aa512deb72ff304f96a16a8aaeef02bb77465b198b333dbc6` |
| 2 | `def` | [FamilyPrefixMaxBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/familyprefixmaxbound.md) | 52 | `declaration-track:2f58b8736cb6125e9f817b31c9c8efae302d7853862c466b7782434a7e32426a` |
| 3 | `theorem` | [familyPrefixMaxBound_of_allPrefixBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/familyprefixmaxbound-of-allprefixbound.md) | 59 | `result-track:b15364c97b9d7f6aeac827081a82d59728d69425f935a338ddcafa3dff2454b3` |
| 4 | `theorem` | [familyAllPrefixBound_of_prefixMaxBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/familyallprefixbound-of-prefixmaxbound.md) | 70 | `result-track:3afed45da33cefb4ae9ec2fbd69c396c76a895715b28a72ea954c191bfa9c55a` |
| 5 | `theorem` | [familyPrefixMaxBound_iff_allPrefixBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/familyprefixmaxbound-iff-allprefixbound.md) | 82 | `result-track:efc716632d87f2e5f56c9791a56acf7963b60f60b43b074edbb8937cb6a4b875` |
| 6 | `def` | [growingShiftActive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/growingshiftactive.md) | 91 | `declaration-track:ba229bc5ef4e8273ac27da1cfb15cc55d6b7ce4a87fdfe6f94312cf6dcd63d46` |
| 7 | `def` | [GrowingShiftTwoPointAllPrefixBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/growingshifttwopointallprefixbound.md) | 96 | `declaration-track:542fa7e43d7013d273ec69b64313acfb85a99d43bdbdd42bfea4fc20f51130e8` |
| 8 | `theorem` | [growingShiftTwoPointMaximalBound_iff_allPrefixBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/growingshifttwopointmaximalbound-iff-allprefixbound.md) | 103 | `result-track:f9e73738fd335a107e30e1a2c4595e1529f46c421f77935b1d5cb36811ebd06d` |
| 9 | `def` | [shiftCardinalitySquareBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/shiftcardinalitysquarebudget.md) | 122 | `declaration-track:61e350caceff5bc0527ae1a83c9e9e8c4cec739beb815ec4a546e45d8ed094c5` |
| 10 | `theorem` | [summedShiftMaximalEnergyBound_of_uniformMaximal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/summedshiftmaximalenergybound-of-uniformmaximal.md) | 128 | `result-track:fee572274944dc1d2a82b61de40472494e77534bdedea1d435661ef057239b1e` |
| 11 | `theorem` | [summedShiftMaximalEnergyBound_of_allPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/summedshiftmaximalenergybound-of-allprefix.md) | 152 | `result-track:e89cf3d585ef111552469ff9f6497a1d5015d594829ae7f9718406e46984fdf8` |
| 12 | `def` | [TerminalFamilyBoundAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/terminalfamilyboundat.md) | 162 | `declaration-track:cd8e297e9ce67c39fa8066e5fdce60f2a356b8ad42dad72a2a9a3ceef689e701` |
| 13 | `def` | [MaximalFamilyBoundAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/maximalfamilyboundat.md) | 168 | `declaration-track:302508a2a2d3baf4b025a4a7860d1c56308eb99680c8643eb0fbc002da31869f` |
| 14 | `theorem` | [actualShiftOneTerminalBoundAtTwo](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/actualshiftoneterminalboundattwo.md) | 174 | `result-track:81bed9677df8ec40e89cb041501bf48731f7b3cf082fde808395e51841f6e6a6` |
| 15 | `theorem` | [actualShiftOneNoZeroMaximalBoundAtTwo](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/actualshiftonenozeromaximalboundattwo.md) | 183 | `result-track:3be0cbfebf504498d3c1872bb4a107bf4167f68e6058f1f7cd194fb54f3569c2` |
| 16 | `theorem` | [actualTerminalFamilyBound_doesNotImplyMaximal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/actualterminalfamilybound-doesnotimplymaximal.md) | 192 | `result-track:a96333a8d9514a7059214c71a1409394220469c542bcef57a1f3cb1ea77b4eac` |
| 17 | `def` | [ParameterDependentNaturalBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/parameterdependentnaturalbound.md) | 202 | `declaration-track:89aaef78f35b7070b9d10fd438323944054a43d00f20093381f1943196bf9457` |
| 18 | `def` | [UniformParameterNaturalBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/uniformparameternaturalbound.md) | 206 | `declaration-track:7132e7b05311eb523e83f8c912bf1580363bb1fbcd46e64a5c817bd45dbc5315` |
| 19 | `theorem` | [parameterDependentNaturalBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/parameterdependentnaturalbound-source-edition-2.md) | 210 | `result-track:cf38f155f5057926e7c30b2c9c1eddfcef6a42a5c727a904d19d0df0ed973134` |
| 20 | `theorem` | [not_uniformParameterNaturalBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/not-uniformparameternaturalbound.md) | 216 | `result-track:91dcc3a343c9b8bfc3043f3d79bb3561cebe256c6a07525f71f9ec6038959819` |
| 21 | `theorem` | [parameterDependent_doesNotImply_uniform](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/parameterdependent-doesnotimply-uniform.md) | 224 | `result-track:94c1b8840971ad07a819bc26b7ab984e68e3c06852ceb260ecaf357db5cc87d9` |
| 22 | `def` | [pointwiseToUniformRequiresBridge](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/pointwisetouniformrequiresbridge.md) | 233 | `declaration-track:746e4e54ffe8a5d2d460d71328fe0f6151df6f59edfc7988ab8411d525958a00` |
| 23 | `def` | [actualTerminalRefutesMaximalRecovery](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/actualterminalrefutesmaximalrecovery.md) | 241 | `declaration-track:52d5b20400ee2355a7391448159683d8542ceccd7e80d8d639e9a73bbd5baa96` |
| 24 | `def` | [growingShiftAllPrefixImpliesMaximal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/growingshiftallprefiximpliesmaximal.md) | 250 | `declaration-track:6834d3be2a580cfc605b41ef44b1ed833c3a468a6a52536d701c9843bfe338d1` |
| 25 | `def` | [growingShiftMaximalImpliesCardinalityEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChowlaScopeSeparation.lean/declarations/growingshiftmaximalimpliescardinalityenergy.md) | 259 | `declaration-track:2c93ccf50b3328641138af3cff8ad6d80e62d396c152d9835076ede55a87a56f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ab218ee0d6fde503f807241825a830628b5b3f22bb4bf7a14356d588e5d25cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/ChowlaScopeSeparation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
