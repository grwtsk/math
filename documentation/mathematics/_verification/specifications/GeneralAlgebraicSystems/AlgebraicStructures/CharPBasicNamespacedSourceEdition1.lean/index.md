# Verification target: Char PBasic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eed4134c6eb0c93e27c902066472fdd645202b5b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eed4134c6eb0c93e27c902066472fdd645202b5b`.

Source path: `GRWTSK/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ULift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ModEq` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Prod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.GrindInstances` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natCast_eq_natCast'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/natcast-eq-natcast.md) | 44 | `result-track:010dfca9dd2b28bc5ed7cd98336453457880246dbf9b3a252821a2b4ea7fb7bb` |
| 2 | `lemma` | [natCast_eq_natCast_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/natcast-eq-natcast-mod.md) | 50 | `result-track:917fe1a7fdf7b99700ddb94b843081a4754af54026381e8643864b6fdac6c773` |
| 3 | `lemma` | [natCast_eq_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/natcast-eq-natcast-source-edition-2.md) | 55 | `result-track:36d1ee3ee74122a435cdb83f921c3dffa267440d8b9c38cb78a63a12f7b87f61` |
| 4 | `lemma` | [natCast_injOn_Iio](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/natcast-injon-iio.md) | 62 | `result-track:b4f072f9d423ed945922867d834a05d625541a6e2cadc308247d141f3092e84b` |
| 5 | `lemma` | [intCast_eq_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/intcast-eq-intcast.md) | 70 | `result-track:01d43fd67bbc0ad731b1f924724af824386e222335af12ce0aaaedb7124ccb7a` |
| 6 | `lemma` | [intCast_eq_intCast_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/intcast-eq-intcast-mod.md) | 73 | `result-track:f245ad380210130bd1529aab8c1a7651dca35a6fa602ba2208ce67bb3b228313` |
| 7 | `lemma` | [intCast_injOn_Ico](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/intcast-injon-ico.md) | 76 | `result-track:8c090f1097ee7ffb96f0bf4a9154078319ec5a75ae1e323e1b7f7efe45781ff2` |
| 8 | `lemma` | [cast_ne_zero_of_ne_of_prime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/cast-ne-zero-of-ne-of-prime.md) | 95 | `result-track:ca3826a3e453b340b2451c15231dcc56eefeedb8981c0ba72d476b8f1f4e4e73` |
| 9 | `lemma` | [ringChar_of_prime_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/ringchar-of-prime-eq-zero.md) | 103 | `result-track:a7bc9a5a1e84285ab836e7b79d06c538ba89e22fd5912977d6532a4471d0176e` |
| 10 | `lemma` | [charP_iff_prime_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/charp-iff-prime-eq-zero.md) | 107 | `result-track:3a2d4d48a0f73e978330a0056bbc45f6faae62f29b8a9a72a4097939b563410b` |
| 11 | `lemma` | [Ring.two_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/ring-two-ne-zero.md) | 118 | `result-track:5ff69f55c147fc3471ab391224100f13ea7620e4623a804aee00867dab61591c` |
| 12 | `lemma` | [Ring.neg_one_ne_one_of_char_ne_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/ring-neg-one-ne-one-of-char-ne-two.md) | 126 | `result-track:24fc22dfaf09b5a87738f2651d36455e23913bf6d0c81a6a683310893dda31e9` |
| 13 | `lemma` | [Ring.eq_self_iff_eq_zero_of_char_ne_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/ring-eq-self-iff-eq-zero-of-char-ne-two.md) | 131 | `result-track:66e818d524074420fb8733f0cc70a99956f0c4c171c5f34aee747fccd4dbc28e` |
| 14 | `instance` | [Nat.lcm.charP](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/nat-lcm-charp.md) | 145 | `declaration-track:93481b77de233b6e835637729448e683a517b6e41725473503ecac1a745cae91` |
| 15 | `instance` | [Prod.charP](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/prod-charp.md) | 151 | `declaration-track:d41a48924d4f73d0c9e40f228930d1544aa5b004618eafd74cfc018f7d0c9f2b` |
| 16 | `instance` | [Prod.charZero_of_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/prod-charzero-of-left.md) | 154 | `declaration-track:b572cf190a6e130c546fc7e7afec1008fd39bd5961cf1ebdab290b0b69fec391` |
| 17 | `instance` | [Prod.charZero_of_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/prod-charzero-of-right.md) | 157 | `declaration-track:1a995550d462692251b22fc1963c4a119b33158949fbb5937095226e78cd6c9b` |
| 18 | `instance` | [ULift.charP](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/ulift-charp.md) | 162 | `declaration-track:f171882a510d70cf130e8c179f5aeb95fc1f3b935fd7a620c34050efb1424cd7` |
| 19 | `instance` | [MulOpposite.charP](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/mulopposite-charp.md) | 165 | `declaration-track:274bcc7204fdb1119de8b353911aef0e5362a03114c1b9bf8233d2c1746f4e6a` |
| 20 | `lemma` | [Int.cast_injOn_of_ringChar_ne_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/int-cast-injon-of-ringchar-ne-two.md) | 172 | `result-track:a859dc3c2e80437efe993fdfc9d78d22de6606a263f5a5c8450d97f01eedab1c` |
| 21 | `lemma` | [charZero_iff_forall_prime_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/charzero-iff-forall-prime-ne-zero.md) | 184 | `result-track:15306cb38bed0f2a059bbc346510e01aa9cbe8b858fc75c14cb5816f94c2d4d7` |
| 22 | `instance` | [charP](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/charp.md) | 198 | `declaration-track:0d77d07d7c68eb056467293a83f0742293df4e1a9ec9723d737050dac13ac625` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/instance.md) | 205 | `declaration-track:c17d3dc65f6dd6c2fed73b7412db41c5b6b3333d66a9ff9263fcab9db06b91c2` |
| 24 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 221 | `declaration-track:c2fae7d9e8c52dbfdd4a6e9d9d62765b63d402cb671187026b1cd3dddda417d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fcde32352cb96d1d6eadf4d6a05d0cbae8311ffb93e294a93863638fb501071 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean","GRWTSK/_verification/specifications/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
