# Verification target: GRWTSK.Topology.MetricTopology.Unitization.Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aefc931e2660a095464339597f13791c31bf2009",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aefc931e2660a095464339597f13791c31bf2009`.

Source path: `GRWTSK/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Unitization` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [opNorm_mul_flip_apply](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/opnorm-mul-flip-apply--29c1ecbd76e5a609cefd1f9b.md) | 38 | `result-track:29c1ecbd76e5a609cefd1f9be2316929ea1fbf7a3557e20f15ac7ad69e1997ca` |
| 2 | `lemma` | [opNNNorm_mul_flip_apply](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/opnnnorm-mul-flip-apply--a4111d77d7e6918ea0b836e9.md) | 49 | `result-track:a4111d77d7e6918ea0b836e905269aacb7b61e90689ec7748aaa1ead2ecb23b0` |
| 3 | `lemma` | [isometry_mul_flip](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/isometry-mul-flip--69f7b3be2d11234cec1552e3.md) | 54 | `result-track:69f7b3be2d11234cec1552e3a69e0d2c70985efd511367eae0d218dcb311e570` |
| 4 | `instance` | [CStarRing.instRegularNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/cstarring-instregularnormedalgebra--03e5778a2734a5bf3513024e.md) | 64 | `declaration-track:03e5778a2734a5bf3513024e73bb45b0be25ce7938a6386ede2af3a9d256a5b2` |
| 5 | `theorem` | [Unitization.norm_splitMul_snd_sq](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/unitization-norm-splitmul-snd-sq--a73303dff49cb3a198166e9c.md) | 92 | `result-track:a73303dff49cb3a198166e9c8cdd5c0f6bc18e9db0794fea16f75d5623fe1be2` |
| 6 | `instance` | [Unitization.instCStarRing](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/unitization-instcstarring--8461ed11ddb5f48a9a00ffd5.md) | 135 | `declaration-track:8461ed11ddb5f48a9a00ffd54895d579985bed8f8d86b020bd62bfdbee0b2d37` |
| 7 | `instance` | [Unitization.instCStarAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/unitization-instcstaralgebra--cb0b2822cdc8452e0b33c3a5.md) | 186 | `declaration-track:cb0b2822cdc8452e0b33c3a5e2600ec4744119f535ccff2d31383b9395f0b74f` |
| 8 | `instance` | [Unitization.instCommCStarAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/declarations/unitization-instcommcstaralgebra--1c2e678f1f4b7958e8b78af3.md) | 190 | `declaration-track:1c2e678f1f4b7958e8b78af3ad279cf29ef2f49f3c80b228f844cc5c25a4211e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
