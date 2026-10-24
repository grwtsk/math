# Verification target: GRWTSK.Topology.GeneralTopology.SourceLeadingTailDecay.Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57943d87dc1b4cb6d42622c0ba7a0ab9cdfcd81a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57943d87dc1b4cb6d42622c0ba7a0ab9cdfcd81a`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceLeadingTailQuantitative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicLeadingErrorEnvelope](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/declarations/logarithmicleadingerrorenvelope--5498985f4f0eb71f01a1f1f9.md) | 24 | `declaration-track:5498985f4f0eb71f01a1f1f9e8aeadf6735dbb6025b9cd7ee9667868d7940df4` |
| 2 | `theorem` | [fullKappaShortBudget_le_logarithmic_envelope](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/declarations/fullkappashortbudget-le-logarithmic-envelope--7e8dd265f124f5462bee5a50.md) | 30 | `result-track:7e8dd265f124f5462bee5a5065c97e6092521b4ef7a3f754c6baa8889e66bf1b` |
| 3 | `theorem` | [logarithmicLeadingErrorEnvelope_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/declarations/logarithmicleadingerrorenvelope-tendsto-zero--602b2e5fd70efb37dbc5d283.md) | 65 | `result-track:602b2e5fd70efb37dbc5d283b3bfcfd9ac1834cf91647899f0203e0f6da6a3f0` |
| 4 | `theorem` | [fullKappaShortBudget_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/declarations/fullkappashortbudget-tendsto-zero--c23162ef453a5b73ff1a79ea.md) | 81 | `result-track:c23162ef453a5b73ff1a79eab76dc110fe4be0c0e63149b69ec6075f857b4a81` |
| 5 | `theorem` | [renormalized_sub_actual_leading_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/declarations/renormalized-sub-actual-leading-tendsto-zero--feecf48fc5ca98a29e4ece25.md) | 94 | `result-track:feecf48fc5ca98a29e4ece259046e4bd6cebf8bd88ca573062fee51d0bb5361e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
