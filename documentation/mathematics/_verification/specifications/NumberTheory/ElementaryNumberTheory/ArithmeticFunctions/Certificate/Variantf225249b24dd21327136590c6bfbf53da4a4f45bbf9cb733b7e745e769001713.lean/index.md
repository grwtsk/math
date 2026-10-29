# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Certificate.Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00a8f69a601fc9390d2c19cf9b0aeba39accc851",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean/index.md) · [Full source](../../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00a8f69a601fc9390d2c19cf9b0aeba39accc851`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryKind](../../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean/declarations/boundarykind--8c9ba50f2e2eb4bafa6fb852.md) | 28 | `declaration-track:8c9ba50f2e2eb4bafa6fb8525c2cc51646a1e2d2028d01b8bb0385d63ae8f05f` |
| 2 | `structure` | [Certificate](../../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean/declarations/certificate--d0d1a1d5476b4aeee41b2fbf.md) | 87 | `declaration-track:d0d1a1d5476b4aeee41b2fbf3487d53be45a553ba3ea86014b776c4646ca82fb` |
| 3 | `theorem` | [certificate_sound](../../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean/declarations/certificate-sound--f47ac8ad1c152a8f83ea1a6b.md) | 95 | `result-track:f47ac8ad1c152a8f83ea1a6b40c844b78d647fc584430c176453773801bbca4b` |
| 4 | `def` | [CertificateIsUnderlyingObject](../../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean/declarations/certificateisunderlyingobject--e125447a9bdeee3327bcc9af.md) | 104 | `declaration-track:e125447a9bdeee3327bcc9af2b990d89f3042c568375a208e484ca7788526b1a` |
| 5 | `theorem` | [certificate_not_underlying_object](../../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean/declarations/certificate-not-underlying-object--32978f2b0f45331634135d4c.md) | 109 | `result-track:32978f2b0f45331634135d4c86bc6ea477c86f77cd811460bfbd5c3c510a8d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5afa0338b904b513bf8f2e9c5c86ce81835c950281e759bdf3479b2a6d72ef53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
