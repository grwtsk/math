# Verification target: GRWTSK.Topology.GeneralTopology.UpperLower.Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3cd265748fe2d981ec7846a598849a38c237e4a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3cd265748fe2d981ec7846a598849a38c237e4a`.

Source path: `GRWTSK/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean.json)

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
| 1 | `class` | [HasUpperLowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/hasupperlowerclosure--68071478c271a65e2180be4b.md) | 34 | `declaration-track:68071478c271a65e2180be4b271a95850053fcc1c30cfbb7a3b4a0a439aef0a5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/instance--23a165ab169d12921d53e820.md) | 44 | `declaration-track:23a165ab169d12921d53e82077b6f5d23d207aa594364c0b17858fff0ae1df1b` |
| 3 | `theorem` | [IsUpperSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/isupperset-closure--bd5bb02cb213881ed2e6b714.md) | 64 | `result-track:bd5bb02cb213881ed2e6b714838dc41a0d15efca259284399b9315c030da842d` |
| 4 | `theorem` | [IsLowerSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/islowerset-closure--aff05d89e749aba9fd0e80d0.md) | 67 | `result-track:aff05d89e749aba9fd0e80d0f7d876d57cdfbc236714cb11cd89723a62c6cdde` |
| 5 | `theorem` | [IsOpen.upperClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/isopen-upperclosure--a3ee90bd2b7cd59dd0f4a5f9.md) | 70 | `result-track:a3ee90bd2b7cd59dd0f4a5f96fd540835d9371b532d0778031405aaef16d7865` |
| 6 | `theorem` | [IsOpen.lowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/isopen-lowerclosure--5d06f8e742af4fb9339000f1.md) | 73 | `result-track:5d06f8e742af4fb9339000f1c629e8e09c165ddd40813f7f7ee015f6ff877f7c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/instance--bd902ec82166556931ba408e.md) | 76 | `declaration-track:bd902ec82166556931ba408e3f63c35c97e6b893bf75e1eba9689033b7f114dd` |
| 8 | `theorem` | [IsUpperSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/isupperset-interior--f21fad9bece353ca66ce7b08.md) | 96 | `result-track:f21fad9bece353ca66ce7b08661c9577ccdd957b38ecc9bcc305e754597cd6af` |
| 9 | `theorem` | [IsLowerSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/islowerset-interior--69851018e99b3991a2972f6a.md) | 100 | `result-track:69851018e99b3991a2972f6a4acf6dbd939efc8a3e224d75ddb3feeebe1f6750` |
| 10 | `theorem` | [Set.OrdConnected.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc596605ed76b04a10b3b002cdaf1f312bdd92242499802ed5db6a6c36e152a21.lean/declarations/set-ordconnected-interior--a8297f2e20416956b7c64e86.md) | 103 | `result-track:a8297f2e20416956b7c64e862c12f9d76ad9dae6383d296713b6a0b43b2acc80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
