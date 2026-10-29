# Verification target: ZPowers Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9086a7f8d6c3c1ff1c5a1b121ebb6d0aa8b10f81",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantf62809cc7f13833cd13e5dfa6dbfc75ab6f012c5c898518994d095871d85b514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9086a7f8d6c3c1ff1c5a1b121ebb6d0aa8b10f81`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variantf62809cc7f13833cd13e5dfa6dbfc75ab6f012c5c898518994d095871d85b514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variantf62809cc7f13833cd13e5dfa6dbfc75ab6f012c5c898518994d095871d85b514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Finsupp` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_zpowersHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/range-zpowershom.md) | 35 | `result-track:d436c4d4ba1880fefffb8a97623897fb905e4ce7bb87736d813c3d2c003cfe79` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/instance.md) | 38 | `declaration-track:d40323f46d7c0ac5c6656fbf319dd50d4a76253cd3bc813adbb9b59af0487d6f` |
| 3 | `theorem` | [finsetSup_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/finsetsup-zpowers.md) | 41 | `result-track:e4ae19c308fe4fad16ed117d0f3ac43c52f95a3a478e5a57f044350978d0c4eb` |
| 4 | `theorem` | [range_zmultiplesHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/range-zmultipleshom.md) | 50 | `result-track:adee802cae82653605c89293728a40f80d8b5488966812fefd6ed06b955227d7` |
| 5 | `theorem` | [intCast_mul_mem_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/intcast-mul-mem-zmultiples.md) | 58 | `result-track:fbf68dd3def152e615b0cd75bac91c506a2a433827c00b91a5b0d936ef7a6568` |
| 6 | `theorem` | [intCast_mem_zmultiples_one](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/intcast-mem-zmultiples-one.md) | 62 | `result-track:3353c531f5fdc6889d1cd006b7e9494125a06874d4d67a2f041cd8ea64b3fa7e` |
| 7 | `lemma` | [range_castAddHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/range-castaddhom.md) | 73 | `result-track:88b2c0eba512b16c55057e00c8bfc523e3ebf5c76495d9ca09ce3b6158a198ac` |
| 8 | `lemma` | [range_nsmulAddMonoidHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/range-nsmuladdmonoidhom.md) | 78 | `result-track:077932b371fb9dbefa18672903b6635f9059cfcf4db8bfc2d3ffc753075b88d9` |
| 9 | `theorem` | [closure_eq_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/closure-eq-zmultiples.md) | 83 | `result-track:f9f264dbd32225b25df03d661d98f6559da5c14bec2378680164bb1021cce74d` |
| 10 | `theorem` | [closure_eq_zmultiples_finsetGcd](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/closure-eq-zmultiples-finsetgcd.md) | 88 | `result-track:a979989caf4c53227a077ffba21a1f06054b0f453f2608dcb856a7bb468279fe` |
| 11 | `theorem` | [zmultiples_sup](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/zmultiples-sup.md) | 96 | `result-track:800dac63bac23dd35b98f1256d1ec71b8868809ea3555a32f0d0848ac976f8d8` |
| 12 | `theorem` | [finsetSup_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/finsetsup-zmultiples.md) | 99 | `result-track:1dc1ae0d109281c9a85bba75419e1083f072cc99631e5a892064c0f43181c501` |
| 13 | `theorem` | [zmultiples_inf](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/zmultiples-inf.md) | 102 | `result-track:0d925460d93e48ae2cfd96b0a0975291fe3732fc9664532570ae80f8582d9245` |
| 14 | `theorem` | [finsetInf_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasPublic.lean/declarations/finsetinf-zmultiples.md) | 106 | `result-track:e9b6895e8934b1dd8deb6cc9e260bfbadaec204e276e5ba785a21f366e537644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c3c83786da8c22cad7c8b06212a9a6aecf799e3f5e18d2cf5def850424dd395 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Variantf62809cc7f13833cd13e5dfa6dbfc75ab6f012c5c898518994d095871d85b514.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lemmas/Variantf62809cc7f13833cd13e5dfa6dbfc75ab6f012c5c898518994d095871d85b514.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
