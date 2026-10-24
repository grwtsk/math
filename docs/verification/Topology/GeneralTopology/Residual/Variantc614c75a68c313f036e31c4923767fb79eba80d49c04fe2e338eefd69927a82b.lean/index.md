# Verification target: GRWTSK.Topology.GeneralTopology.Residual.Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc253159650ba8eab65269ac5a6fe0d08499a536",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc253159650ba8eab65269ac5a6fe0d08499a536`.

Source path: `GRWTSK/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Transcendental.Liouville.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.LocallyCompactRegular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Irrational` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setOf_liouville_eq_iInter_iUnion](../../../../../mathematics/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean/declarations/setof-liouville-eq-iinter-iunion--f38f06f726853a63ce29f56b.md) | 23 | `result-track:f38f06f726853a63ce29f56b28c8743c615107755086a94b5f0ea37546ecb634` |
| 2 | `theorem` | [IsGδ.setOf_liouville](../../../../../mathematics/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean/declarations/isg-setof-liouville--cdb9550c85499cacb19dc81f.md) | 31 | `result-track:cdb9550c85499cacb19dc81fd37afeb0a6d8c09fc7376c65ffa17fa9d023586e` |
| 3 | `theorem` | [setOf_liouville_eq_irrational_inter_iInter_iUnion](../../../../../mathematics/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean/declarations/setof-liouville-eq-irrational-inter-iinter-iunion--df80e19da6df417996234f10.md) | 38 | `result-track:df80e19da6df417996234f10e6ab20c934f845461059aa6a70ddcf9a09aaf6d2` |
| 4 | `theorem` | [eventually_residual_liouville](../../../../../mathematics/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean/declarations/eventually-residual-liouville--0a50222627b7980dbedf4e8c.md) | 52 | `result-track:0a50222627b7980dbedf4e8ce0fe65d416eea45a82c4af912678843c1c0acf87` |
| 5 | `theorem` | [dense_liouville](../../../../../mathematics/Topology/GeneralTopology/Residual/Variantc614c75a68c313f036e31c4923767fb79eba80d49c04fe2e338eefd69927a82b.lean/declarations/dense-liouville--85669337b343a44be8b1534a.md) | 73 | `result-track:85669337b343a44be8b1534aa986f10abf70f1bed9adb26974a78077842354bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
