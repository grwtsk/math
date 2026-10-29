# Verification target: Group Semiconj Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0522d0422b1da0fd7bfc3fb6ab285ba744cd9326",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0522d0422b1da0fd7bfc3fb6ab285ba744cd9326`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiconjBy](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/semiconjby.md) | 43 | `declaration-track:0dd98fba375ffc54f4b6e067886548e9716ccafff36a91099d67081e318d432a` |
| 2 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/eq.md) | 52 | `result-track:f945efa8557ce678bcea13ac2bf7476818fbbe95134d241a69cfee01d20a3793` |
| 3 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/mul-right.md) | 65 | `result-track:cc0d58d4ecf5266d1eb46ebc4d0f7feb60cc03456551993f01bbd9ef8baddecc` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/mul-left.md) | 77 | `result-track:0b7afb9594a2a2ea6d3c106a92a491625fc244bf2e17e911c7c410325dd25cc4` |
| 5 | `theorem` | [transitive](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/transitive.md) | 87 | `result-track:09d21e0c55f46da8203847b98a0af44d82fc00d23835e23cc8e7033f59165dd8` |
| 6 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/one-right.md) | 100 | `result-track:51e9c1363acedacf388c015adc129be1685b8d73378e1007eea48270612caac9` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/one-left.md) | 106 | `result-track:e510bced873fa26c91ce6f8d5fe2939c35022f04ff8c2bdb5f532551b3a65d1a` |
| 8 | `theorem` | [reflexive](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/reflexive.md) | 115 | `result-track:535cd90173e85f3f649da22bd12c83c7ea50cc028f0cefed0fe542523a4c699f` |
| 9 | `theorem` | [units_inv_right](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-inv-right.md) | 129 | `result-track:80f967079f6e6e003dfa6c09d3459137bb9dfdc36a18c0e342003f1bda48029d` |
| 10 | `theorem` | [units_inv_right_iff](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-inv-right-iff.md) | 137 | `result-track:7e6ed31312b8aa7e731167b901e2b67a07d2c096ab729e246d29bb647aa22247` |
| 11 | `theorem` | [units_inv_symm_left](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-inv-symm-left.md) | 145 | `result-track:db98f1085bbe7affb499d987985ed27dd614113a114836ec1f063fc645a0e382` |
| 12 | `theorem` | [units_inv_symm_left_iff](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-inv-symm-left-iff.md) | 153 | `result-track:aed104e1f3a64285bbaa833c568ae8de5824e2389ebdd1f9d138609e3ceb29ac` |
| 13 | `theorem` | [units_val](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-val.md) | 159 | `result-track:4b195908de869d32fd6607cd929150a4985bd61bb7c9585f88d51eadcb93d316` |
| 14 | `theorem` | [units_of_val](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-of-val.md) | 165 | `result-track:f11c641106dad7f22f71fea60cb9d650d6a78ccae2e75068b4be1b3b9544897e` |
| 15 | `theorem` | [units_val_iff](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-val-iff.md) | 171 | `result-track:f1bebb0b776762d4a9d3b7df8fb2c867a6b21c634dc0ed40cbaab93237eced96` |
| 16 | `theorem` | [pow_right](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/pow-right.md) | 177 | `result-track:f7c9b4ecbf2f97790c37faf6d1eb0856ef2920ee3471f08aa30e4156543ea8d9` |
| 17 | `theorem` | [inv_inv_symm_iff](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/inv-inv-symm-iff.md) | 193 | `result-track:54b4e344ab1b62674bc831cf4821517ecc82f861d13b4eda7ebcca14b23ee386` |
| 18 | `theorem` | [inv_inv_symm](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/inv-inv-symm.md) | 200 | `result-track:c72ce40f3e3b9d84740fa94f48361c8b8a3144670727804fcb7b6f6912d45c35` |
| 19 | `theorem` | [inv_right_iff](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/inv-right-iff.md) | 212 | `result-track:fa862b3d0977f9f00b5b3acc324a6edef440bba885ebd80a591141a1da29e6bf` |
| 20 | `theorem` | [inv_right](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/inv-right.md) | 219 | `result-track:8d93c80a451bdffdd53b602175b61e0c4be11adb03c2293ef3ebbfdf02ec7a7f` |
| 21 | `theorem` | [inv_symm_left_iff](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/inv-symm-left-iff.md) | 225 | `result-track:53d0b948c7b04cd53959d877e01ee6f30a3eb1c2ba1e345fc9e0bebde4e14dad` |
| 22 | `theorem` | [inv_symm_left](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/inv-symm-left.md) | 231 | `result-track:751b810d6a55f3c6646c8cf817e1496d8291e9550149c9fabbf676f7fda6ef16` |
| 23 | `theorem` | [conj_mk](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/conj-mk.md) | 238 | `result-track:57fd9d233757379dde531bf72e306eb43113e2f5f259077706b86f3fabb0fe58` |
| 24 | `theorem` | [semiconjBy_iff_eq](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/semiconjby-iff-eq.md) | 248 | `result-track:509cd3f2faefd98a8533a301ced14c1d9c382374095a62afa4abdfb30252f8a7` |
| 25 | `theorem` | [Units.mk_semiconjBy](../../../../GroupTheoryAndGeneralizations/GroupSemiconjNamespaced.lean/declarations/units-mk-semiconjby.md) | 255 | `result-track:d976dfaaa016b32c304ceb5ee55618b3867307b28ee0d0c5626364ffbe4926ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c615fd9a6460255e5932dd0f0a3a0a1e27d8fcaad68fb93e3be2351458de9978 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
