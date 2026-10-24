# Verification target: GRWTSK.Topology.GeneralTopology.ProjIcc.Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3f74bd0396cc8ef30bc597a1f5396dbe2097f7e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3f74bd0396cc8ef30bc597a1f5396dbe2097f7e`.

Source path: `GRWTSK/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.ProjIcc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.IccExtend](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/declarations/filter-tendsto-iccextend--6a7032de1385c35d13d8013b.md) | 21 | `result-track:6a7032de1385c35d13d8013baba4009db34ff5d2d96d8d5b1be7aa4c46c2176b` |
| 2 | `theorem` | [continuous_projIcc](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/declarations/continuous-projicc--7704d5c5bd7739c966ab98fc.md) | 29 | `result-track:7704d5c5bd7739c966ab98fc9465dc651562d8d809d692927b9bde77ee4e9275` |
| 3 | `theorem` | [isQuotientMap_projIcc](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/declarations/isquotientmap-projicc--c6a8c0c90dfa21c82809fe43.md) | 32 | `result-track:c6a8c0c90dfa21c82809fe43e70eab60ae0578b7c616707a9d5fcbffe43e0c21` |
| 4 | `theorem` | [continuous_IccExtend_iff](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/declarations/continuous-iccextend-iff--66f47630cd76e37956a5febe.md) | 40 | `result-track:66f47630cd76e37956a5febe822886b0d24a8f58980cd45e9f5efe9e2b9ffb68` |
| 5 | `theorem` | [Continuous.IccExtend](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/declarations/continuous-iccextend--27af4b31bf8598541ff52a90.md) | 44 | `result-track:27af4b31bf8598541ff52a90b93f0070a6c50e1bc546a86aa5e578856c7481ed` |
| 6 | `theorem` | [Continuous.Icc_extend'](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/declarations/continuous-icc-extend--00b77eb5198c7dd15f24fd10.md) | 51 | `result-track:00b77eb5198c7dd15f24fd1059c7afbfd78089c5ffde9616309b1d0df83ac855` |
| 7 | `theorem` | [ContinuousAt.IccExtend](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac.lean/declarations/continuousat-iccextend--7c62016796f0d0d34b4248aa.md) | 55 | `result-track:7c62016796f0d0d34b4248aa2687830d1885741b830d357429c5dc58fb150f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
