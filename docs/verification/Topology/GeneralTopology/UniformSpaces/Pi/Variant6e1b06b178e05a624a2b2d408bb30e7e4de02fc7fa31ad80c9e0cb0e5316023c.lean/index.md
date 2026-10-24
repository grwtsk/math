# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Pi.Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeffde280064d63e801e20f7a1ea9e6bed2f6f6b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeffde280064d63e801e20f7a1ea9e6bed2f6f6b`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Separation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Pi.uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/pi-uniformspace--4e09e3bbe3a65ef7dad9208c.md) | 36 | `declaration-track:4e09e3bbe3a65ef7dad9208c556afb637c80c10da40289c080e768f334f45e9d` |
| 2 | `lemma` | [Pi.uniformSpace_eq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/pi-uniformspace-eq--f159dc2ff47d28b8a1e6efa9.md) | 42 | `result-track:f159dc2ff47d28b8a1e6efa94edc3fd010cf3907bd3a3b37de09c647c8f6565b` |
| 3 | `theorem` | [Pi.uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/pi-uniformity--4f99ccfb123f271d30763d78.md) | 46 | `result-track:4f99ccfb123f271d30763d78bd16b9f89a419eda19609604d0d25260a459ff1a` |
| 4 | `theorem` | [uniformContinuous_pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/uniformcontinuous-pi--a374b110a71fd324f5f72e14.md) | 53 | `result-track:a374b110a71fd324f5f72e14ed0d359b873c14024522312dafe75cb52af26924` |
| 5 | `theorem` | [Pi.uniformContinuous_proj](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/pi-uniformcontinuous-proj--0cea025b72f356cfa2da42cc.md) | 61 | `result-track:0cea025b72f356cfa2da42cc6bbeee9c7b4645c58754e365eca6fcac74b53bed` |
| 6 | `lemma` | [cauchy_pi_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/cauchy-pi-iff--cb2720457a478ef66a93645c.md) | 65 | `result-track:cb2720457a478ef66a93645c0c1ac92a072e0a019a2b024e5da79111467c40b8` |
| 7 | `lemma` | [cauchy_pi_iff'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/cauchy-pi-iff--6a7263b5882b8a75438f6f6a.md) | 69 | `result-track:6a7263b5882b8a75438f6f6a3a2a055bb38e74e8908a5e32f86a4673dcf91e02` |
| 8 | `lemma` | [Cauchy.pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/cauchy-pi--3e47142f139c769173a11343.md) | 73 | `result-track:3e47142f139c769173a113434fc9892ed08e3f44a2251b90c23c0b077c218793` |
| 9 | `instance` | [Pi.complete](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/pi-complete--371d0cec13f7a4b4924bcbea.md) | 78 | `declaration-track:371d0cec13f7a4b4924bcbea0ab97b272f028626429a0a9f30ae8f4bf6a051ba` |
| 10 | `instance` | [Pi.separated](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant6e1b06b178e05a624a2b2d408bb30e7e4de02fc7fa31ad80c9e0cb0e5316023c.lean/declarations/pi-separated--360f3b164a2b0b9303cda181.md) | 87 | `declaration-track:360f3b164a2b0b9303cda181769974a1a096fa865d9f0335d309ebe0d5aca3c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
