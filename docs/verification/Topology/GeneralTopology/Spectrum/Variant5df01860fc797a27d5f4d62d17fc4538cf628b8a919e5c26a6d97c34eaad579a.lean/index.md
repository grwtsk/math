# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "042ab8550bc8b9270842e84be736a4fc7bb49ea0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `042ab8550bc8b9270842e84be736a4fc7bb49ea0`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `spectral_rh.Spectral.Schrodinger.Operator` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [spectrum_lowerBound](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean/declarations/spectrum-lowerbound--19c2df400aea1b94e796dc6d.md) | 34 | `result-track:19c2df400aea1b94e796dc6db0a01d191cc073ebcab72d4ced99c5471ad085fc` |
| 2 | `lemma` | [spectrum_subset_real](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean/declarations/spectrum-subset-real--40570944a93e0f33ad98694c.md) | 42 | `result-track:40570944a93e0f33ad98694c40ee58fd6db178572c8fb422d42924774955e005` |
| 3 | `lemma` | [spectrum_eq_eigenvalues](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a.lean/declarations/spectrum-eq-eigenvalues--42abee575963fecf0d069794.md) | 48 | `result-track:42abee575963fecf0d06979448e28b828b4e4be529c70e403a6002b4eead1ac0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
