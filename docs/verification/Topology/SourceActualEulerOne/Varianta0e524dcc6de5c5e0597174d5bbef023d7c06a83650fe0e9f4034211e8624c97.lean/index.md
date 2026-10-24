# Verification target: GRWTSK.Topology.SourceActualEulerOne.Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "590ba946f675e60246a908173d40eaf714f12611",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/index.md) · [Full source](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `590ba946f675e60246a908173d40eaf714f12611`.

Source path: `GRWTSK/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodicB1](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb1--baa3d6f482d0bfc7580dc070.md) | 28 | `declaration-track:baa3d6f482d0bfc7580dc0704f9338b87b51eb49b2bd834a0b3a2abba82feed0` |
| 2 | `def` | [periodicB2](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb2--88e03c3061287aa913ba6273.md) | 30 | `declaration-track:88e03c3061287aa913ba62733bb048d5215697cc8f661ebf07bd2d96cd41b516` |
| 3 | `theorem` | [sourceFloorWeight_eq_neg_periodicB1](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/sourcefloorweight-eq-neg-periodicb1--2ec0106b3979c1c5e9a0cf66.md) | 33 | `result-track:2ec0106b3979c1c5e9a0cf66d1741994a8b4a05077c3e47f78133c7e134a8fa5` |
| 4 | `theorem` | [periodicB2_bounds](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb2-bounds--739ead87e835bbdff18c9ec9.md) | 38 | `result-track:739ead87e835bbdff18c9ec90161d4d33481fc8994e142449c76009c577e8f77` |
| 5 | `theorem` | [periodicB2_abs_le](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb2-abs-le--0b6d471f4c91252f32bdae1c.md) | 48 | `result-track:0b6d471f4c91252f32bdae1c5501b7e54b012edbbfa7c42f9d7142b3d602aaa6` |
| 6 | `theorem` | [periodicB2_at_integer](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb2-at-integer--020bae496ec37c8f82b026e5.md) | 52 | `result-track:020bae496ec37c8f82b026e5594cf884f208d9d996c63216f38d3a462fde10ce` |
| 7 | `theorem` | [periodicB2_continuous](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb2-continuous--03dff1f479dc2bc7ef17427c.md) | 56 | `result-track:03dff1f479dc2bc7ef17427c125b712fc2af904b186ce598ee6d131b3c356b21` |
| 8 | `theorem` | [periodicB2_hasDerivAt](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb2-hasderivat--11c87e71d70ae087da33644e.md) | 65 | `result-track:11c87e71d70ae087da33644ee14f0c7e53fea789f28fd191f4a9580f0c95dc60` |
| 9 | `theorem` | [periodicB2_ae_hasDerivAt](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/periodicb2-ae-hasderivat--d017e3982f7539c0c47aa6be.md) | 81 | `result-track:d017e3982f7539c0c47aa6be9757ad8a75d4ee38c598ce9c44608f6c5b3c945f` |
| 10 | `theorem` | [actual_zeta_euler_one](../../../../mathematics/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/declarations/actual-zeta-euler-one--d60159369026d3e752f0ca67.md) | 89 | `result-track:d60159369026d3e752f0ca671f14b103c4cae5deaa7ba9b97e5343d34d5d8a16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
