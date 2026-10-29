# Verification target: Verschiebung Verschiebung Injective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "befa882bfe4d38db2daf502f959b752091454f22",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variantee2aaea6876632fa61b0cc43aead0788bcfb855c62f7614874305a783affd622.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/index.md) · [Full source](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `befa882bfe4d38db2daf502f959b752091454f22`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variantee2aaea6876632fa61b0cc43aead0788bcfb855c62f7614874305a783affd622.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Verschiebung/Variantee2aaea6876632fa61b0cc43aead0788bcfb855c62f7614874305a783affd622.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verschiebungFun](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebungfun.md) | 36 | `declaration-track:ea158626b889f077c7979906b0c56ccf0e5c16158a37c512c8f2a11b53710eef` |
| 2 | `theorem` | [verschiebungFun_coeff](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebungfun-coeff.md) | 39 | `result-track:3316b2dcb4b81f953aa770d7b5c2af7e3d0114f489490791da8620b5d233d666` |
| 3 | `theorem` | [verschiebungFun_coeff_zero](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebungfun-coeff-zero.md) | 43 | `result-track:3093a5311479211f2129570986819705b48548b01f84c3000c6051e5b00cd90a` |
| 4 | `theorem` | [verschiebungFun_coeff_succ](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebungfun-coeff-succ.md) | 47 | `result-track:1b5d73d4788b477e1b67182cb274cab04e69de8d6cfb33bf97656481b0bb8afe` |
| 5 | `theorem` | [ghostComponent_zero_verschiebungFun](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/ghostcomponent-zero-verschiebungfun.md) | 52 | `result-track:2aa95838bf16ff62faed90448ffd43b6d1b8e4ab1e2342fc927c5eca555ca99f` |
| 6 | `theorem` | [ghostComponent_verschiebungFun](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/ghostcomponent-verschiebungfun.md) | 58 | `result-track:9540cb4850108a25162158c1462ad40c67ea7f698df4de0443fe0a57761674c3` |
| 7 | `def` | [verschiebungPoly](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebungpoly.md) | 69 | `declaration-track:09fc77139626c995cd66d2c2fda7e8b00d2fbfdbd518b0d24c299a89e25bccfa` |
| 8 | `theorem` | [verschiebungPoly_zero](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebungpoly-zero.md) | 73 | `result-track:c6960129903814bead64b527a6e50005ae61f67f9ed7b9e61f1a0f7271fad694` |
| 9 | `theorem` | [aeval_verschiebung_poly'](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/aeval-verschiebung-poly.md) | 76 | `result-track:3bbef3217d494831d65912570a559f0101dfde95c500357fa4b57e80b225d7cf` |
| 10 | `instance` | [verschiebungFun_isPoly](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebungfun-ispoly.md) | 88 | `declaration-track:2e9c81bdeb690595636dc9641eefc85c6b4de3372a89ab996e43fc900870e83f` |
| 11 | `example` | [(anonymous)](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/example.md) | 94 | `declaration-track:ee2468fe04f503e68958cfd87f50bb8d203c3f84b57e1f65b33d5e27f4ed5734` |
| 12 | `def` | [verschiebung](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebung.md) | 107 | `declaration-track:8f041519604bd08ca76caaacc3200a6834c3b70c083c03a17a46285aadbb1290` |
| 13 | `theorem` | [verschiebung_isPoly](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebung-ispoly.md) | 118 | `result-track:83d6324a5405cf8ff358d7805f4f8920fcf123839d2892cbeb4613e91f7a1571` |
| 14 | `theorem` | [map_verschiebung](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/map-verschiebung.md) | 123 | `result-track:4760fd21d4afaf161e85dac1b36acf20357e0edb6c994fb4d8d2c28a31292455` |
| 15 | `theorem` | [ghostComponent_zero_verschiebung](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/ghostcomponent-zero-verschiebung.md) | 130 | `result-track:781da41096f12cad004b4d34837454aea21c8eff2433d0b97adbcb5e319301a3` |
| 16 | `theorem` | [ghostComponent_verschiebung](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/ghostcomponent-verschiebung.md) | 134 | `result-track:fd3f00682e8e70c69dff5068b3c4c7b109496dff6f78a6ef93b2536b9f6d5111` |
| 17 | `theorem` | [verschiebung_coeff_zero](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebung-coeff-zero.md) | 139 | `result-track:9d62b637118e35af38a2a0f06fb5dcf0e6fc772c7284b365b771ce74bfe60d22` |
| 18 | `theorem` | [verschiebung_coeff_add_one](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebung-coeff-add-one.md) | 143 | `result-track:70141a86248a1341236a2fbf8c7d7d0961276f894777a8eaddedf90dc15bec56` |
| 19 | `theorem` | [verschiebung_coeff_succ](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebung-coeff-succ.md) | 148 | `result-track:3751790ccbb112bde89220877d321b44851081c5ff5044a3ed96f17620506bce` |
| 20 | `theorem` | [verschiebung_injective](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/verschiebung-injective.md) | 152 | `result-track:a3c9924054b96af071cccd4440368815aad138d9ed7cb3ad81b696bea6acca53` |
| 21 | `theorem` | [aeval_verschiebungPoly](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/aeval-verschiebungpoly.md) | 159 | `result-track:bc6171d82847cad9a57c6cbf841b9b2e077c0a1a5144ea5d6a066ffd28842a5c` |
| 22 | `theorem` | [bind₁_verschiebungPoly_wittPolynomial](../../../../CommutativeAlgebra/VerschiebungVerschiebungInjective.lean/declarations/bind-verschiebungpoly-wittpolynomial.md) | 164 | `result-track:a87febbb21d3465dfbcaa4e6fb809eeae6dfb82882a0e60bb5f44be0474dd832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9861373200d39f6b5064cbde6f026b5e4dbf4ccbe59359b0a05dc9f6cc814185 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variantee2aaea6876632fa61b0cc43aead0788bcfb855c62f7614874305a783affd622.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Verschiebung/Variantee2aaea6876632fa61b0cc43aead0788bcfb855c62f7614874305a783affd622.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
