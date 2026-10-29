# Verification target: Distillation Namespaced Interval Dyadic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c8a79a90491a513f6abc7dac3cc067dfc5e7a6e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c8a79a90491a513f6abc7dac3cc067dfc5e7a6e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Network` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.ML.IntervalVector` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntervalDyadic.neg](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/intervaldyadic-neg.md) | 49 | `declaration-track:74054b149494daafcb1225c9b9d5784dfae6198e1eccea4190bc86354a393e95` |
| 2 | `theorem` | [IntervalDyadic.mem_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/intervaldyadic-mem-neg.md) | 59 | `result-track:75477b3998a4c72b223dad8d0aade1c3d131939ea0c34fea551620c27ffd5054` |
| 3 | `def` | [IntervalDyadic.sub](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/intervaldyadic-sub.md) | 73 | `declaration-track:87d7ffb5c435cd9ec7fbcdf3c8dace01871d7ffcbf04c2c530e490965ef29a32` |
| 4 | `theorem` | [IntervalDyadic.mem_sub](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/intervaldyadic-mem-sub.md) | 77 | `result-track:d5d194b90776a53176f7211a7ef8904b274ec1dc241f9d4db76f5c1dee63c5e4` |
| 5 | `structure` | [SequentialNet](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/sequentialnet.md) | 85 | `declaration-track:5e8a6c481626b1014339b623d6e099837fae8962886a330ca7934b502ecfbc2f` |
| 6 | `def` | [forwardReal](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/forwardreal.md) | 92 | `declaration-track:9efa297ad16f37715dab663e3870f907e12d696b56deaab3ef207ec6449bca38` |
| 7 | `def` | [forwardInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/forwardinterval.md) | 96 | `declaration-track:03713d6cb225535b54c0e9290fdfc2ba8506dba3054e3ebf259955a80347be57` |
| 8 | `def` | [LayersWellFormed](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/layerswellformed.md) | 100 | `declaration-track:0b8d1cce3f2a5e6e4a5c04116f759c0205b59fec1948a52ef2aa70c29e70ae20` |
| 9 | `def` | [WellFormed](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/wellformed.md) | 108 | `declaration-track:ef70d5876cb5a77314d629980963beee79ccc1cde0210d43e69d423f292e6b4b` |
| 10 | `theorem` | [forwardLength_aux](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/forwardlength-aux.md) | 112 | `result-track:4dd848fc34a0dd628cdf7885fbce64aa8d9e7d71aa0188f711b7667e47678ab9` |
| 11 | `theorem` | [mem_forwardInterval_aux](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/mem-forwardinterval-aux.md) | 131 | `result-track:411a9f85b0ff0934e6c8b2c8445fc28cae0ac2a9d33778009080e552745c8bb4` |
| 12 | `theorem` | [mem_forwardInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/mem-forwardinterval.md) | 181 | `result-track:44a0c2cdce3dbadffb2d4faee5e7467a8f0ff18ac9c6a2c14ad33641c81e0ac0` |
| 13 | `def` | [subVectors](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/subvectors.md) | 197 | `declaration-track:1e5461158da82a6bacc273483e2b00992b67d6d4a0d9fa05aaffa7e1ecab16bd` |
| 14 | `theorem` | [subVectors_length](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/subvectors-length.md) | 201 | `result-track:9a7e3678c2600b7e53def1187f98ac2452ed44ec36ebb249e3fbf81c9125e912` |
| 15 | `theorem` | [mem_subVectors](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/mem-subvectors.md) | 206 | `result-track:5adea1bcd8cd0a56693109babbdc6ebf6bace004d260df8f4623a19ed652df2d` |
| 16 | `def` | [intervalBoundedBy](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/intervalboundedby.md) | 225 | `declaration-track:0d46b4b41718d2f1b7108e3f6f07639cd75929ba61205dd764f8e085fa74c3a5` |
| 17 | `def` | [isBoundedBy](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/isboundedby.md) | 230 | `declaration-track:fbec85079137181a7fb074e08cb823db6cd2616a57de1174ecb17dfa57f2c84d` |
| 18 | `theorem` | [intervalBoundedBy_spec](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/intervalboundedby-spec.md) | 234 | `result-track:a0f4b529e656458ed8c9a184702b1bd547cc8b8dedbb80e3ac728a1e61d56484` |
| 19 | `def` | [checkEquivalence](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/checkequivalence.md) | 253 | `declaration-track:5bc4d1ba573574dcb3eb38c26207f89c046c47c57f6f02dc573b6c9abcd02d2f` |
| 20 | `theorem` | [checkEquivalence_dims](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/checkequivalence-dims.md) | 266 | `result-track:23a3ab9cc441fb400cef31c83c67784824102c522e371c1c2d223f048b90a483` |
| 21 | `theorem` | [verify_equivalence](../../../../../ComputerScience/AlgorithmsInComputerScience/DistillationNamespacedIntervalDyadic.lean/declarations/verify-equivalence.md) | 283 | `result-track:1a9986e8b868a8cb3080dceb35093b88aa9685d7cba805cb8e439f104ebb7bbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d6ab76e65ed7a4db43980afe21ffa47d762c771d80feb55792daf766c110f9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
