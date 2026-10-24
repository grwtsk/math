# Verification target: GRWTSK.Topology.GeneralTopology.Subadditive.Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee5113a3258cafa515279c1c961d29123bfc2332",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee5113a3258cafa515279c1c961d29123bfc2332`.

Source path: `GRWTSK/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subadditive](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/declarations/subadditive--e88e44fcf82067afe6e52cac.md) | 44 | `declaration-track:e88e44fcf82067afe6e52cac48126fc317f06f819c0f9e427f5f56f54b48dd6d` |
| 2 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/declarations/lim--36a24a769ccc998a47fe0981.md) | 54 | `declaration-track:36a24a769ccc998a47fe098170161b5f446dc8a536f6e66e10d385f291e6b1f3` |
| 3 | `theorem` | [lim_le_div](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/declarations/lim-le-div--1d665655c034963e94f97505.md) | 57 | `result-track:1d665655c034963e94f97505a3fcaa6f68f1240a0d870be461117812f2a0f04e` |
| 4 | `theorem` | [apply_mul_add_le](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/declarations/apply-mul-add-le--88857267e99f7dd67187af58.md) | 63 | `result-track:88857267e99f7dd67187af587e5b3cf66fa41a5ab9ac54907854a1b0d2d78620` |
| 5 | `theorem` | [eventually_div_lt_of_div_lt](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/declarations/eventually-div-lt-of-div-lt--2c8f97db50db9d47af46af4b.md) | 74 | `result-track:2c8f97db50db9d47af46af4b17a1c98260f3eb008275d3cb68d106564cd9a216` |
| 6 | `theorem` | [tendsto_lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/declarations/tendsto-lim--c6a0682ed013ace02a2b1907.md) | 97 | `result-track:c6a0682ed013ace02a2b1907506209488c241b2b9d9c087820d169acf1cea6d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
