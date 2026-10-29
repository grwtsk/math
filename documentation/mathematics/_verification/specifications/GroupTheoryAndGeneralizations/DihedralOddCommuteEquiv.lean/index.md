# Verification target: Dihedral Odd Commute Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "962092e3c21552b0275a074d0cfbe19a3c798b27",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant834124de0699d45356924d4b53f97cc075843958de1b5187610efbf321da27ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `962092e3c21552b0275a074d0cfbe19a3c798b27`.

Source path: `GRWTSK/Algebra/GroupTheory/Dihedral/Variant834124de0699d45356924d4b53f97cc075843958de1b5187610efbf321da27ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Dihedral/Variant834124de0699d45356924d4b53f97cc075843958de1b5187610efbf321da27ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DihedralGroup](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/dihedralgroup.md) | 26 | `declaration-track:b700caf6c997eba6e05b7f1d07bb7cdadde3efabd3aa4437d27baa14cd1b2669` |
| 2 | `def` | [mul](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/mul.md) | 38 | `declaration-track:c035ec51921e20318002a21fd2833fb5b038cd9d935487d78a9738b02be3f768` |
| 3 | `def` | [one](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/one.md) | 46 | `declaration-track:317ea9dba427503da225b5398384e02f31dca56fba85663eef8457f77b463c9c` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/instance-source-edition-4.md) | 49 | `declaration-track:d826c3f448c0908691e9ca665fb62b8150c981887d5bf1b9ef067c100dee66ca` |
| 5 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/inv.md) | 54 | `declaration-track:7269e2bff1db4ab27cf918a087df7d56072e3d2e35901c72854ccf1ba112b141` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/instance-source-edition-3.md) | 60 | `declaration-track:b6357dee4c1c5b694d3f69aacd95da93296681b0bce957ce92d76b34ab8a7350` |
| 7 | `theorem` | [r_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/r-mul-r.md) | 79 | `result-track:708550177ef0554a50b0004c8b19614d38a2d90fe2121f4c37a5365a42c6e7e7` |
| 8 | `theorem` | [r_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/r-mul-sr.md) | 84 | `result-track:6ff67c17888d7fe687b2d988cd9914e586a1b7979b6b380ead45aea64cffe7a1` |
| 9 | `theorem` | [sr_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/sr-mul-r.md) | 89 | `result-track:01f114b08cb0c91d452d880cb64ca183efd5a45fe9d9b2af31e2b68d523c3e6f` |
| 10 | `theorem` | [sr_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/sr-mul-sr.md) | 94 | `result-track:b54321b41354d578d4b4a8fc278cb766cc81359d0b41b17b7512d0558cc3db50` |
| 11 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/one-def.md) | 98 | `result-track:889c3741bcf989264f593af8b0c21a561ae01b24d781198633e501c2dd9286f0` |
| 12 | `def` | [fintypeHelper](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/fintypehelper.md) | 102 | `declaration-track:5c7072f00cdefd9191526a6274fff9747f64375fba8b39e54fcb0fd1cd89dfb1` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/instance.md) | 114 | `declaration-track:98d5d595109622c8a7a0f4c3a8be60c2b96b0d0e73b3a14e469c521ccce59529` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/instance-source-edition-5.md) | 117 | `declaration-track:e7345f4e93edf7906922c23d6888273112632b97fdf2eb5e3a6665580e10a1e4` |
| 15 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/instance-source-edition-2.md) | 120 | `declaration-track:a7cf18402b85488edccbf6f253a3baf4774d25eb48ed46a8d77b278dcc55d587` |
| 16 | `theorem` | [card](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/card.md) | 125 | `result-track:c7a400c60877e4424e8479f6328aeb1938f94fcbfada9c5087852c0432913358` |
| 17 | `theorem` | [nat_card](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/nat-card.md) | 129 | `result-track:1d65faebcc59a229a2e894b15ad5dcb0893115753695adce5661e5ec13079ee7` |
| 18 | `theorem` | [r_one_pow](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/r-one-pow.md) | 135 | `result-track:47e4c521b75fe1f85ef64a7a637904ec8eb188c14c0931b82f8372cf443cd341` |
| 19 | `theorem` | [r_one_pow_n](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/r-one-pow-n.md) | 146 | `result-track:5af0884ae27c32a5359338fe58ac3cd75b1e26c3a654061674d8b999b2ec903d` |
| 20 | `theorem` | [sr_mul_self](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/sr-mul-self.md) | 153 | `result-track:7b5a46e6f13a6be140a1423ed019a104d66bd94f8e87e3dd236b5525ee29b263` |
| 21 | `theorem` | [orderOf_sr](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/orderof-sr.md) | 159 | `result-track:8e4e233b087bb0bc9fcccb54ebd374be4ec4fabced7a0e3a1acac0b18674de21` |
| 22 | `theorem` | [orderOf_r_one](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/orderof-r-one.md) | 170 | `result-track:40cd4f2470818872d698848f7bec9286d757daa8c918d37d7b9811d2d9eea7e8` |
| 23 | `theorem` | [orderOf_r](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/orderof-r.md) | 189 | `result-track:de6b452612326e7e71105350f2214dfb760d3011566889963cf0e2d07178bd87` |
| 24 | `theorem` | [exponent](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/exponent.md) | 194 | `result-track:72520433245138ac9bf7da8e9f4b3571db19b463d9f89fec9fac7547c94420ec` |
| 25 | `def` | [OddCommuteEquiv](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/oddcommuteequiv.md) | 215 | `declaration-track:460d88cad8c054f3c187c00828eaea101792bcee0d899be67c95ad548e4c3923` |
| 26 | `lemma` | [card_commute_odd](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/card-commute-odd.md) | 248 | `result-track:b25aa49860370407f48e0c13ef1264b154dcf937126bc3a1b27bd2e9815303d0` |
| 27 | `lemma` | [card_conjClasses_odd](../../../../GroupTheoryAndGeneralizations/DihedralOddCommuteEquiv.lean/declarations/card-conjclasses-odd.md) | 254 | `result-track:de10c5d81a20b8f188d52fe493a31304fba9545ccae15c485a2683719c752dc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06db501ef4e0875796d5a30c3d006724365e91a10e92a01910e9569d0cc66f10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Dihedral/Variant834124de0699d45356924d4b53f97cc075843958de1b5187610efbf321da27ce.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Dihedral/Variant834124de0699d45356924d4b53f97cc075843958de1b5187610efbf321da27ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
