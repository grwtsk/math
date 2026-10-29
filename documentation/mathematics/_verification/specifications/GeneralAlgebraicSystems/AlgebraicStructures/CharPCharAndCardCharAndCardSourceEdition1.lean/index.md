# Verification target: Char PChar And Card Char And Card Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "527870b30231b098c02779d9a257960bf80b2429",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CharAndCard/Variant69062efb8f521f3ad0ded684741f2288912bb7c06741c9744f27a5d1056d9cd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPCharAndCardCharAndCardSourceEdition1.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPCharAndCardCharAndCardSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `527870b30231b098c02779d9a257960bf80b2429`.

Source path: `GRWTSK/Algebra/CharAndCard/Variant69062efb8f521f3ad0ded684741f2288912bb7c06741c9744f27a5d1056d9cd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CharAndCard/Variant69062efb8f521f3ad0ded684741f2288912bb7c06741c9744f27a5d1056d9cd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_not_dvd_char_of_ringChar_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPCharAndCardCharAndCardSourceEdition1.lean/declarations/isunit-iff-not-dvd-char-of-ringchar-ne-zero.md) | 23 | `result-track:ce13e0c5885f9d6435ed69901f1569bcd038c825547c053d09835fdf382838b1` |
| 2 | `theorem` | [isUnit_iff_not_dvd_char](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPCharAndCardCharAndCardSourceEdition1.lean/declarations/isunit-iff-not-dvd-char.md) | 51 | `result-track:a3b9cafc610b01a6f9ff6887ea014eb42b0e2de958f00b3aeea185d7647e0a06` |
| 3 | `theorem` | [prime_dvd_char_iff_dvd_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPCharAndCardCharAndCardSourceEdition1.lean/declarations/prime-dvd-char-iff-dvd-card.md) | 58 | `result-track:e6663ee92eeff2a24b0cee9c3b59de3882cbfa1ca28d96164c98c9737c209543` |
| 4 | `theorem` | [not_isUnit_prime_of_dvd_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPCharAndCardCharAndCardSourceEdition1.lean/declarations/not-isunit-prime-of-dvd-card.md) | 79 | `result-track:c898dc0a5fa489d54715cbc9b6f544760d61efccbe921a1e4932d3ff6c227489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56a5f476dec34f1041694a8de01add4257b02c8796184dcd08a7a5104a255558 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CharAndCard/Variant69062efb8f521f3ad0ded684741f2288912bb7c06741c9744f27a5d1056d9cd9.lean","GRWTSK/_verification/specifications/Algebra/CharAndCard/Variant69062efb8f521f3ad0ded684741f2288912bb7c06741c9744f27a5d1056d9cd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
