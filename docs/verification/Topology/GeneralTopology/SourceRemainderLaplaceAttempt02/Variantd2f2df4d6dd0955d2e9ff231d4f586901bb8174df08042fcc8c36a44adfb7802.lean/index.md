# Verification target: GRWTSK.Topology.GeneralTopology.SourceRemainderLaplaceAttempt02.Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb2eaeb105b1fa60f2612ae345b64b3741ad49c6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb2eaeb105b1fa60f2612ae345b64b3741ad49c6`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRemainder](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean/declarations/actualremainder--92828b9a223172c830ce52ba.md) | 13 | `declaration-track:92828b9a223172c830ce52ba07456a9c3855d99f91db75c54214c03d051bc551` |
| 2 | `def` | [actualLaplace](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean/declarations/actuallaplace--18ac974287740802dff6ca8f.md) | 16 | `declaration-track:18ac974287740802dff6ca8fe7c8dfe347c8a66140c7ffc7a81143463672004b` |
| 3 | `theorem` | [laplaceWeight_abs_le_one](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean/declarations/laplaceweight-abs-le-one--396bd753ff825471aaeade65.md) | 19 | `result-track:396bd753ff825471aaeade6566dc53e4928cec271d43add830037efde0bfd75d` |
| 4 | `theorem` | [actual_weighted_remainder_integrable](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean/declarations/actual-weighted-remainder-integrable--5d648fbcc740440567863d2e.md) | 25 | `result-track:5d648fbcc740440567863d2e59f40a95ed9c5fd82972967dc0e557836ee38c75` |
| 5 | `theorem` | [actual_laplace_tendsto_right](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variantd2f2df4d6dd0955d2e9ff231d4f586901bb8174df08042fcc8c36a44adfb7802.lean/declarations/actual-laplace-tendsto-right--a36067f44aabb8c3b7487b68.md) | 33 | `result-track:a36067f44aabb8c3b7487b68e3875cc2468d67275f3054b558c2b8d99e8ede02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
