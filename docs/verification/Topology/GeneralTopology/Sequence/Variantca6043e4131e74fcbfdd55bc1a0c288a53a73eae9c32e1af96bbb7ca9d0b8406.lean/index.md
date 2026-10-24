# Verification target: GRWTSK.Topology.GeneralTopology.Sequence.Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca8cde69b9f8a506e1c92f2e170f34ac9e9f8e32",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca8cde69b9f8a506e1c92f2e170f34ac9e9f8e32`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactification.OnePoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natUnionInftyEmbedding](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/declarations/natunioninftyembedding--31208547fdaf86847600427c.md) | 29 | `declaration-track:31208547fdaf86847600427cbb5f1bc1cd9c59405c42bb58a6230606fbd2decf` |
| 2 | `lemma` | [isClosedEmbedding_natUnionInftyEmbedding](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/declarations/isclosedembedding-natunioninftyembedding--ee833bf8268a18bf6974d927.md) | 40 | `result-track:ee833bf8268a18bf6974d92716c88c2262e0d1c8cffa99eb64e308889b56fb8f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/declarations/instance--971e9ab634ad95203068ce98.md) | 56 | `declaration-track:971e9ab634ad95203068ce98981562a562769cf4f9c6b71f2b6c2fe5846a0538` |
| 4 | `abbrev` | [NatUnionInfty](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/declarations/natunioninfty--6007557acbfae657ffdf6855.md) | 59 | `declaration-track:6007557acbfae657ffdf6855fc6b9ff2a34a7dfe934617bfe36d757147043a32` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/declarations/instance--200385e0f1759321c87df45f.md) | 64 | `declaration-track:200385e0f1759321c87df45f42f6deca391ae78e16eec1aea61c843cab90b746` |
| 6 | `lemma` | [continuous_iff_convergent](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/declarations/continuous-iff-convergent--b31fa94ca300837f03de1043.md) | 68 | `result-track:b31fa94ca300837f03de1043e0613e6aa0b7cdd642ec0a59542165f59a5efa1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
