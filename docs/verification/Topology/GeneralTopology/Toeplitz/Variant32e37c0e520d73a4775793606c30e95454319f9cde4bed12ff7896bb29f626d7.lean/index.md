# Verification target: GRWTSK.Topology.GeneralTopology.Toeplitz.Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1d160eb2c2745149e6a640f6cd828b4b5565ddf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1d160eb2c2745149e6a640f6cd828b4b5565ddf`.

Source path: `GRWTSK/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [minor_amplitude](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/declarations/minor-amplitude--5ce053405ea1fb1b1f1c077e.md) | 28 | `result-track:5ce053405ea1fb1b1f1c077e79a5d45546205337075db911b0b1453737e8ce49` |
| 2 | `theorem` | [pfInfinity_amplitude_iff](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/declarations/pfinfinity-amplitude-iff--df8c129794b8dcb949933e77.md) | 41 | `result-track:df8c129794b8dcb949933e77fb0fa791f1ec836c1f77e8c427c80bf06fbb612c` |
| 3 | `theorem` | [continuous_minor](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/declarations/continuous-minor--bcef60ec746ebccab51aa284.md) | 53 | `result-track:bcef60ec746ebccab51aa28403a5a206fd46a8808f9f296fe543d8d92b24ca5c` |
| 4 | `theorem` | [minor_tendsto](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/declarations/minor-tendsto--340e5f998c1becde165b2e9d.md) | 69 | `result-track:340e5f998c1becde165b2e9d5119b6ec0630da8dfbd211851fe1f3ed5de4b520` |
| 5 | `theorem` | [pfInfinity_of_eventually_minor_nonnegative](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/declarations/pfinfinity-of-eventually-minor-nonnegative--e05d6df911faf18422d58f6e.md) | 76 | `result-track:e05d6df911faf18422d58f6e5b3b62779bdd1429a7deadc529f3dd896802f78b` |
| 6 | `theorem` | [pfInfinity_of_coefficientwise_limit](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/declarations/pfinfinity-of-coefficientwise-limit--31092680e2470cd7e8edb592.md) | 85 | `result-track:31092680e2470cd7e8edb59227c4ed91dfc6011809137ed221b4339f19be5f4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
