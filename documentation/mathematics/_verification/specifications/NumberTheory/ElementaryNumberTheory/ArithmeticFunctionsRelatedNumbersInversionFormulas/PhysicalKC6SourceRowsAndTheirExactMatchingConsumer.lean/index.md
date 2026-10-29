# Verification target: Physical KC6 Source Rows And Their Exact Matching Consumer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bc66725bae9e50c13fd6a919b9495dfd9729ae8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant95ef37889239067cb7a64cabf4fc6fd6fae0332f4809fd381b4c748a82dca080.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bc66725bae9e50c13fd6a919b9495dfd9729ae8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant95ef37889239067cb7a64cabf4fc6fd6fae0332f4809fd381b4c748a82dca080.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant95ef37889239067cb7a64cabf4fc6fd6fae0332f4809fd381b4c748a82dca080.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceKapitzaCumulativeMatching` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaFiniteFilter` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaQuadratureCurvature` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [physicalWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalweight.md) | 25 | `declaration-track:980ddbc876d52ad2d83813dc98893ac51addb8007284c535f922a437ec3820ee` |
| 2 | `def` | [analyticWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/analyticweight.md) | 30 | `declaration-track:84f3a4309a7f2ba0fc2f42c567f15967bd06515845c48690801cfa669836930b` |
| 3 | `theorem` | [physicalWeight_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalweight-one.md) | 33 | `result-track:9886df1c15c36b451314dd04c46206b04ada5ac627c8835c0a044d27f596c7f7` |
| 4 | `theorem` | [analyticWeight_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/analyticweight-one.md) | 36 | `result-track:4e4f1d43ecf8b4c66609901b8f3ef22d22340b033da3ca241cd4d784455c743a` |
| 5 | `theorem` | [physicalWeight_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalweight-eq.md) | 39 | `result-track:3ceca234a3fbfd495482c19e78c9d46c098cdefab38108aa4df24b675be5d48f` |
| 6 | `theorem` | [physical_compensated_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physical-compensated-eq.md) | 47 | `result-track:de9b6c67ff05b5cdfb28facbcd93d36222d15c55e9a8816285f9f2cf5f879b56` |
| 7 | `def` | [physicalRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalrow.md) | 56 | `declaration-track:81d92040f93baac7091e7222d30467fcf47d4f0a3bcb26daab530c5df0470175` |
| 8 | `def` | [weightedRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/weightedrow.md) | 61 | `declaration-track:0eb9c2fe74a8dfc19af91a43f8b49966a12a375d7dca4d6cb9386e637e390ce4` |
| 9 | `def` | [physicalResidual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalresidual.md) | 63 | `declaration-track:54fc2c65a60b121c4bf258de8127f1fa246875640b10c6e93638db8ea3033390` |
| 10 | `def` | [head](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/head.md) | 66 | `declaration-track:1a7153bebf2254e658c04bbfc3af2c7c724e23ca3cd4c0201678eefc328bad3a` |
| 11 | `def` | [middle](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/middle.md) | 68 | `declaration-track:98bec087ccedb800945b5e5de403354e1b78918a994b4bc49a04fb821f899812` |
| 12 | `def` | [top](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/top.md) | 70 | `declaration-track:820da7be69c5df3b4a3d4efd352e4a9362483fda7f2176296eee02b5aad2fb76` |
| 13 | `def` | [headCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/headcutoff.md) | 73 | `declaration-track:a808dbb7cb30fbaacf24d6d55b57fe4ad6165feb88c6a6e16350361b1c9a4b15` |
| 14 | `def` | [topCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/topcutoff.md) | 75 | `declaration-track:05e88f1d403976f182add5381e437786d6e6d837e161a3c99f8083047e4ae0b3` |
| 15 | `theorem` | [physicalResidual_three_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalresidual-three-strip.md) | 77 | `result-track:60cd924cd4013d065d252f70ac4b9ccb9bb6c5fce97e132d98b86da0453ba79a` |
| 16 | `theorem` | [physicalWeight_zero_above](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalweight-zero-above.md) | 84 | `result-track:5df8f3fb391e03e0d2ac0956c1d7d3651f5e518187ed7efa84d1013a160baac8` |
| 17 | `theorem` | [physical_cutoff_ge_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physical-cutoff-ge-two.md) | 88 | `result-track:29dd2368bc90cdf6c01bc5a20b234a23ecc20ddab8ba45f142388e71ae7b9793` |
| 18 | `def` | [physicalJ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalj.md) | 96 | `declaration-track:ebd9abda62f3e39d3b28a7972091e0fa3eeb2d9c2b834891d52c23a249ee5ba6` |
| 19 | `theorem` | [physicalResidual_eq_finiteResidual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physicalresidual-eq-finiteresidual.md) | 100 | `result-track:1085f0f2c5429636e9a835f13395af9f548194de6b6f75d4af722663097c9fdd` |
| 20 | `theorem` | [physical_divisor_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physical-divisor-balance.md) | 111 | `result-track:e4819da451dbd9d7830293c5ec27532cf287bface165c0196a9544235500d1ec` |
| 21 | `theorem` | [compensated_eq_physicalJ_sub_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/compensated-eq-physicalj-sub-residual.md) | 122 | `result-track:e827b47e8c52d222f3b2583637ae6e0fbf72276013fcd04984c7eeefce8a642c` |
| 22 | `def` | [demandAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/demandatom.md) | 128 | `declaration-track:c2547c99ecff8ce96d808850edc1a20437054009bc336d9b495f434fdea247fe` |
| 23 | `def` | [supplyAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/supplyatom.md) | 130 | `declaration-track:4e445d56d5d88873bc9a4c24465e583c74ca91c77d00b9285a13b0e9a0bf0ba9` |
| 24 | `def` | [cumulative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/cumulative.md) | 133 | `declaration-track:3f2e5c7c26878f641fba4123e98dae905453443ff06eeda66b133b5292513cb7` |
| 25 | `theorem` | [cumulative_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/cumulative-zero.md) | 135 | `result-track:9fe798705b270b09dc2577c513f44e16786e2f17e86a94886411942980592bcf` |
| 26 | `theorem` | [cumulative_monotone](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/cumulative-monotone.md) | 138 | `result-track:a7e7e616f4003cbdb38b90ea03e4ff3a7ff58dc904f89647d20f66c529d5c2f5` |
| 27 | `theorem` | [demandAtom_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/demandatom-nonneg.md) | 145 | `result-track:e9c5abf10127dc0915ed67add3cfe160602ecd83b8a78c92115dd9d3b0fd1234` |
| 28 | `theorem` | [supplyAtom_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/supplyatom-nonneg.md) | 153 | `result-track:0905baf034a89742145776307e57df51cb8e01ca03ac9515dab42ab16d3e30a0` |
| 29 | `theorem` | [demand_total](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/demand-total.md) | 161 | `result-track:974a6901c50cafecf0f5e29e78122b41ae0a15bea436c5c42b890f545d64057f` |
| 30 | `theorem` | [supply_total](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/supply-total.md) | 174 | `result-track:4534964237823a0c18dd55b07d07361022709d1f1cdb1dd1458b06c1806a1f6c` |
| 31 | `theorem` | [physical_matching_return](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/physical-matching-return.md) | 188 | `result-track:98b31392805534160f48526f051216dd3bee1f5b51499e18b42191cf365704f7` |
| 32 | `theorem` | [estimate_of_physical_residual_budget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PhysicalKC6SourceRowsAndTheirExactMatchingConsumer.lean/declarations/estimate-of-physical-residual-budget.md) | 216 | `result-track:2f047bdb91641bf5d95d28f5b362a0fec1583d58c7d38fc9e4f657c5bbf03853` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fa75d2448d13571641792fe9c246d801f0f1660713c2f40259e48111e8ca846 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant95ef37889239067cb7a64cabf4fc6fd6fae0332f4809fd381b4c748a82dca080.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaPhysicalMatching/Variant95ef37889239067cb7a64cabf4fc6fd6fae0332f4809fd381b4c748a82dca080.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
