# Verification target: Erased Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50a384c11172638310db8f08d82afd895ccfedcd",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50a384c11172638310db8f08d82afd895ccfedcd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Erased](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/erased.md) | 31 | `declaration-track:f82b1ba3b9f6a7b4034d0c01b2f107e65d340152c94423783c197409816ccd33` |
| 2 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/mk.md) | 38 | `declaration-track:61a9585c250c1c866040d008fa65c1ad4355119ebbfd3d2c67cc3bfa64c8add9` |
| 3 | `def` | [out](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/out.md) | 42 | `declaration-track:26e982a9fe4134070b19fce817394c33326ade79f7321357baae482ff25ca7c2` |
| 4 | `abbrev` | [OutType](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/outtype.md) | 49 | `declaration-track:7c2b82fc0cc54b75cced1f10bbc3874afba69a4bb719babee80c33f26adf249d` |
| 5 | `theorem` | [out_proof](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/out-proof.md) | 53 | `result-track:3ed00a4095f25082bf83755701437ec6b6972b5b39b768b5661276cf00280651` |
| 6 | `theorem` | [out_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/out-mk.md) | 57 | `result-track:ae5f3ac7aa3147fb08c6259569d583694aaedfcaad1f681bdd1e40851d0f541e` |
| 7 | `theorem` | [mk_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/mk-out.md) | 63 | `result-track:d93f9bbfd507125209971ba0feb932c8fb9f0c2ec28bf490a24745c590687027` |
| 8 | `theorem` | [out_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/out-inj.md) | 67 | `result-track:b7c16072e8c3632a0232d7b3b7435a793e0071057d9c0247e7e8483e7230f5e7` |
| 9 | `def` | [equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/equiv.md) | 70 | `declaration-track:f6e95a40349192bb6a090af4a157b26239f9f153389e3a0e884512af94ca9964` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/instance-source-edition-2.md) | 73 | `declaration-track:815e950c4cac9859ee7f3f2752f69e2384ce3fb24fe616adbdcc5fbba7baf363` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/instance.md) | 76 | `declaration-track:186fe92abcb24e3dc0304b9a7fe3d6053d5c5c12ac6b2eec8c58112dced0338f` |
| 12 | `def` | [choice](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/choice.md) | 80 | `declaration-track:25290bf97ccee3fb6e85e7fc7bb9642134141ed88f81b7197e92845c9f9eb79b` |
| 13 | `theorem` | [nonempty_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/nonempty-iff.md) | 84 | `result-track:c345c81b7a472869062cbdb6d57520c2f52f9ec67aaee2f2869f90de94982bb5` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:b7c3d6995fb25a7f12f906c33f0106651b2418086710cbd232a1eef068b51db9` |
| 15 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/bind.md) | 95 | `declaration-track:517c899962724ae6479433a140d3dd15081a4ae12d304cffc91c38657e2c47f1` |
| 16 | `theorem` | [bind_eq_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/bind-eq-out.md) | 99 | `result-track:01ccc2597b43dc4b9cc02769e99a20ac3132756d69cf8bd44798f6f662af74bb` |
| 17 | `def` | [join](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/join.md) | 103 | `declaration-track:b6d354939d4901c19536c2e2e48ab9e1f4b4c6da32fcac8d99d61fff4e8e9e05` |
| 18 | `theorem` | [join_eq_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/join-eq-out.md) | 107 | `result-track:8fb11084b311873b75084aec404b6ae8a3fa49a648a8170876967e08299d729d` |
| 19 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/map.md) | 115 | `declaration-track:de13738ad0694803f987570b8c40b0b60eba93d4d9c546edebe0cacbccb94162` |
| 20 | `theorem` | [map_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/map-out.md) | 119 | `result-track:feb74551b385c6af6db331fc39bb28c5a22407e971b5d23ed58acdf49afb2be8` |
| 21 | `instance` | [Monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/monad.md) | 121 | `declaration-track:bba29849d20d902e3176349891077054309b06485670c9d419f4d559b87b019f` |
| 22 | `theorem` | [pure_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/pure-def.md) | 127 | `result-track:f6db82a0e971f09c52b032c960667658025860bfa4ba7a019cc078e236aba96e` |
| 23 | `theorem` | [bind_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/bind-def.md) | 131 | `result-track:3fe5a11135b32ca5665d44b3e29caa4082f8c3bf9d4d06fe42272cba78e1a196` |
| 24 | `theorem` | [map_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/map-def.md) | 135 | `result-track:576d40432972f37739e66a5a657972cd7b2c8404b9c7964d5a1b096793632289` |
| 25 | `instance` | [instLawfulMonad](../../../../../../ComputerScience/TheoryOfData/DataStructures/ErasedNamespaced.lean/declarations/instlawfulmonad.md) | 138 | `declaration-track:0e8371b0c1c9d5ea2ccf56fabd5abefa4cf7e8424e29f6deb5db0fbdb7a7fb3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce77f2c93a064b08d4dc930918b0dd8051504a54e5a7776944736919e873f890 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
