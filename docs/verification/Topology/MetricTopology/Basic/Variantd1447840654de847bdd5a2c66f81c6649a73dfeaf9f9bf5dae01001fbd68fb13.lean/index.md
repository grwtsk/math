# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a328b2b5cb3b73ebf9c2efe556a25bf7562b8ce",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a328b2b5cb3b73ebf9c2efe556a25bf7562b8ce`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.PerpBisector` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_weightedVSub](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/declarations/inner-weightedvsub--54efa164fa00d59851e7dbbe.md) | 58 | `result-track:54efa164fa00d59851e7dbbe1c548116c3661518f7075aa31dd06ec3ffa8043b` |
| 2 | `theorem` | [dist_affineCombination](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/declarations/dist-affinecombination--d26835379f655fc098314dc9.md) | 72 | `result-track:d26835379f655fc098314dc9f7329d7b6732cf90f5796eb4625851a874fb8588` |
| 3 | `theorem` | [dist_smul_vadd_sq](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/declarations/dist-smul-vadd-sq--4963b3aa8f742c9c9e0df0be.md) | 90 | `result-track:4963b3aa8f742c9c9e0df0bef86b071096f1b1b29ba18e901c1bc3aedce0d646` |
| 4 | `theorem` | [dist_smul_vadd_eq_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/declarations/dist-smul-vadd-eq-dist--a0fa9289f5ee218044c0d5da.md) | 99 | `result-track:a0fa9289f5ee218044c0d5da391c4af89c3e76bf0c6be57166aaf0ef7a9c659c` |
| 5 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/declarations/eq-of-dist-eq-of-dist-eq-of-mem-of-finrank-eq-two--2846db1fddb9b2ec5bdfd9aa.md) | 119 | `result-track:2846db1fddb9b2ec5bdfd9aa283e8724abacaf1695c3b446656cc230d8b2e25c` |
| 6 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variantd1447840654de847bdd5a2c66f81c6649a73dfeaf9f9bf5dae01001fbd68fb13.lean/declarations/eq-of-dist-eq-of-dist-eq-of-finrank-eq-two--516eac57c057a80032bf8b0f.md) | 174 | `result-track:516eac57c057a80032bf8b0ff3352a965b9befe4e4bf635c33b84e26fb094cd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
