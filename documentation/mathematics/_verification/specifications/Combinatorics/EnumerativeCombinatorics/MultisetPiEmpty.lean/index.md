# Verification target: Multiset Pi Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51b94962bae7dd31cb02be189c22b22b7f6708c5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantc13c44282fc9d4eeee1ed480795d20b138edf6432cb3dfbaf7b7485815ea4901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51b94962bae7dd31cb02be189c22b22b7f6708c5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantc13c44282fc9d4eeee1ed480795d20b138edf6432cb3dfbaf7b7485815ea4901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variantc13c44282fc9d4eeee1ed480795d20b138edf6432cb3dfbaf7b7485815ea4901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [empty](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/empty.md) | 28 | `declaration-track:621511be8d7ac4fb7c5e36ea7aba7c5adb487b16685c235e77e65cbb62e3b18a` |
| 2 | `def` | [cons](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/cons.md) | 36 | `declaration-track:399ef7d6dd4f6393777b04132c2c38284addc4c449f119244e1388289512e539` |
| 3 | `theorem` | [cons_same](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/cons-same.md) | 41 | `result-track:4c9ebd54bc88727294f0dc5ec39afb2ad4179746bcc18b766bb45f812bb58cfa` |
| 4 | `theorem` | [cons_ne](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/cons-ne.md) | 45 | `result-track:cff936d12cf315370388f1d42605033af41792115e12a12a950bea4cbb35b452` |
| 5 | `theorem` | [cons_swap](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/cons-swap.md) | 49 | `result-track:2c050baee10f08227b394bfc96d2162ffbd7a10e9aa6243d674fe087696a63e2` |
| 6 | `theorem` | [cons_eta](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/cons-eta.md) | 61 | `result-track:cc392e2a778eb49f76d4e06c842c53a1598a71129e5db3c4ee9c8eaa679630b3` |
| 7 | `theorem` | [cons_map](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/cons-map.md) | 69 | `result-track:11e386dabd358908b593abcbf606987e86ed480cebd362e141e8ee009a84a0ac` |
| 8 | `theorem` | [forall_rel_cons_ext](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/forall-rel-cons-ext.md) | 77 | `result-track:91a3fb51eb90d639ae6c30e9ddb1f823a2146f01d9454e4ce7bb28c5a0ee5704` |
| 9 | `theorem` | [cons_injective](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/cons-injective.md) | 87 | `result-track:558a23305501191a2f0bec8c175324eff2f575df8bc95135b3c9120814952813` |
| 10 | `def` | [pi](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/pi.md) | 104 | `declaration-track:ababdbb963817c2e5133b9bbd3d3408a882cf1f351cb7601eb6e0dbb032bfd87` |
| 11 | `theorem` | [pi_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/pi-zero.md) | 124 | `result-track:81d1e5db6b1ed5e2a733987119b595bed832ed7e51db449281c2f6c4a5d77e12` |
| 12 | `theorem` | [pi_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/pi-cons.md) | 128 | `result-track:c77210bd71ba75c4a1dbde6ddc2c95aa0b733bc627af7fb1034fca17bb2e989b` |
| 13 | `theorem` | [card_pi](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/card-pi.md) | 132 | `result-track:f027caeae390f7cfc315feebefb717b8bcf496725d7d57f687790d16c0cad021` |
| 14 | `theorem` | [Nodup.pi](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/nodup-pi.md) | 136 | `result-track:52fcd4266349b5caf73cb3955bfcb86a4f0b82a148a8511025184000cc5b2f1e` |
| 15 | `theorem` | [mem_pi](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetPiEmpty.lean/declarations/mem-pi.md) | 154 | `result-track:ac7f4be708d810e14eb6938e9a6e87827e82b2f68938988beadb3fa29e244866` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d683b9a1423d849970912a9d397937edafd29dd3ce1f41ac6a7396cae05defaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantc13c44282fc9d4eeee1ed480795d20b138edf6432cb3dfbaf7b7485815ea4901.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pi/Variantc13c44282fc9d4eeee1ed480795d20b138edf6432cb3dfbaf7b7485815ea4901.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
