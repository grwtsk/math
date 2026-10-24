# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Pi.Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd62099175ae9f9e7b8f64dbfe09f54125983c4c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd62099175ae9f9e7b8f64dbfe09f54125983c4c`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Separation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Pi.uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/pi-uniformspace--ebdd364f41401c9a76992ad4.md) | 28 | `declaration-track:ebdd364f41401c9a76992ad45b846cc75c4aab6df5908ac238c52042cf5ed079` |
| 2 | `lemma` | [Pi.uniformSpace_eq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/pi-uniformspace-eq--d06d1d0b307a0a2622743339.md) | 34 | `result-track:d06d1d0b307a0a26227433395f533ba2c36791eeb6e5be43841e50e36fb82d87` |
| 3 | `theorem` | [Pi.uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/pi-uniformity--36e526de1a24eed6a6dbb4ba.md) | 38 | `result-track:36e526de1a24eed6a6dbb4ba9ed9fc7b85da7befd6539e3ba826f1daf0248507` |
| 4 | `theorem` | [uniformContinuous_pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/uniformcontinuous-pi--501dcf6bc544426eb1beb5b1.md) | 45 | `result-track:501dcf6bc544426eb1beb5b1f16646e16fc7f6a6f0c6ccdb895020fc2e8a0260` |
| 5 | `theorem` | [Pi.uniformContinuous_proj](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/pi-uniformcontinuous-proj--ba2bb80c17f4e72837e57a65.md) | 53 | `result-track:ba2bb80c17f4e72837e57a656a3503f7122b5379921a676be3bc4f88e685b035` |
| 6 | `lemma` | [cauchy_pi_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/cauchy-pi-iff--c175d372828b40820ad8d949.md) | 57 | `result-track:c175d372828b40820ad8d949c545b47088247f5296638fd29cedfafa52a5514d` |
| 7 | `lemma` | [cauchy_pi_iff'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/cauchy-pi-iff--cfdcaa81dc09559d81e3a964.md) | 61 | `result-track:cfdcaa81dc09559d81e3a964a94b4b0b8a1324abf7dce6081f5dc4697be79808` |
| 8 | `lemma` | [Cauchy.pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/cauchy-pi--4b2423b32733977d4a6f7200.md) | 65 | `result-track:4b2423b32733977d4a6f7200e3fa29f65696ccd5590cdc59d69ff15c949ec89d` |
| 9 | `instance` | [Pi.complete](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/pi-complete--0cd11016002e55338811ab02.md) | 70 | `declaration-track:0cd11016002e55338811ab02748fc0d9e59dcc42c98e6eba1565acbbfb84d249` |
| 10 | `instance` | [Pi.separated](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6.lean/declarations/pi-separated--78f4007409dfc6247e254166.md) | 79 | `declaration-track:78f4007409dfc6247e254166f9581ee7c5303f5339dac499d36b474757d72a1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
