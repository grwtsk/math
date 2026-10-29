# Verification target: Terminated Stable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2405467d8aa7d8bf01da4ce3295040ee209dd5f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2405467d8aa7d8bf01da4ce3295040ee209dd5f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Translations` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [terminated_stable](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/terminated-stable.md) | 22 | `result-track:02439239758d35f7758dfed4fc1be624c0229e8f89e68e6531dca079964fa616` |
| 2 | `theorem` | [contsAux_stable_step_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/contsaux-stable-step-of-terminated.md) | 28 | `result-track:4f50368c945626d5de6f260acca5c2ae681561cfbc396d7d2ccd1801acbcc226` |
| 3 | `theorem` | [contsAux_stable_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/contsaux-stable-of-terminated.md) | 33 | `result-track:759a6768e274a0a1ab5865df71ef15ad8c395f16f6b78bcf7f46140d38dd61cd` |
| 4 | `theorem` | [convs'Aux_stable_step_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/convs-aux-stable-step-of-terminated.md) | 40 | `result-track:72dbf41ee7ecfa59f34e4516e32c34dea20b0a7de6bc85dca407c446c66c83ed` |
| 5 | `theorem` | [convs'Aux_stable_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/convs-aux-stable-of-terminated.md) | 55 | `result-track:ae03dc1f666117bb94e70b7756190d1407e75a700d5d8217840b268769ecbe14` |
| 6 | `theorem` | [conts_stable_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/conts-stable-of-terminated.md) | 63 | `result-track:5bc3e769c5076e98c1e5dea78f23c87c3fe5cea368186f60672425fbbc20669d` |
| 7 | `theorem` | [nums_stable_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/nums-stable-of-terminated.md) | 68 | `result-track:0e2a01bc68a6bb58bd211a2ff4e9f0b1530266b5e3f1ccf618a94b48396ae840` |
| 8 | `theorem` | [dens_stable_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/dens-stable-of-terminated.md) | 72 | `result-track:7f6a7d6d3e890be1363bb5c54aa609582a9d1ce8ceac6c6cd34f8f0bda20cd71` |
| 9 | `theorem` | [convs_stable_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/convs-stable-of-terminated-source-edition-2.md) | 76 | `result-track:6656d26ffbf423a32598152104caf91df86a35aa6f8c83979fa508e6c5e493c7` |
| 10 | `theorem` | [convs'_stable_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TerminatedStable.lean/declarations/convs-stable-of-terminated.md) | 81 | `result-track:3b75da738dd84dc778965af03a32fd2ecf07da7d33dba4363c11e88846cf50d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61aabfb99b85bc00936fbc56a997ceb0a84c43c837b6202790fd0f4b1d626884 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
