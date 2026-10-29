# Verification target: Address Canonical Prime Enumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "582efcab40f7eeef9fd47565664de208cf778b9b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/index.md) · [Full source](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `582efcab40f7eeef9fd47565664de208cf778b9b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/sequentialprimespecification.md) | 19 | `declaration-track:fcf274bfc0cc284af5fd89215b8bd9c1bd17e06b14a62581a129518923c25442` |
| 2 | `def` | [rank](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rank.md) | 28 | `declaration-track:d342a02426f3096cdbc79ce267d4a0e95e9a24df734113fb52952030fc349633` |
| 3 | `structure` | [PrimeEnumeration](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/primeenumeration.md) | 32 | `declaration-track:aaff3d475ffe575b39d9509fff649788f47ed11aad488e1ade8d1188f98db36a` |
| 4 | `def` | [canonicalPrimeEnumeration](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/canonicalprimeenumeration.md) | 43 | `declaration-track:ad39a7a61a6cd9ad203c5bf8056e45ce38692f118ddde39ce23fcbe80c16d772` |
| 5 | `theorem` | [canonicalPrimeEnumeration_value](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/canonicalprimeenumeration-value.md) | 50 | `result-track:a5ccf481ab00e0bfcf25c521f0ed32c986b5132a8c94c498f181f60ae74cd983` |
| 6 | `theorem` | [canonicalPrimeEnumeration_prime](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/canonicalprimeenumeration-prime.md) | 54 | `result-track:010e644ff0ce6594373d5cafa4f05a495e282a89531dbdc0ea8e8aa749aab9e3` |
| 7 | `theorem` | [canonicalPrimeEnumeration_strictlyIncreasing](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/canonicalprimeenumeration-strictlyincreasing.md) | 58 | `result-track:95431330ee80312b3ea76a58dc20dcc03cd69c0af0b3fe54fd99e50b172c855b` |
| 8 | `def` | [cantorPair](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/cantorpair.md) | 65 | `declaration-track:25ec0e53e69fe979bc9424422709d8dd25801a014093144cccee54798990c6d2` |
| 9 | `def` | [finiteSequenceCode](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/finitesequencecode.md) | 69 | `declaration-track:90ef83eb6f3d5e56d3f7baf55098e62c47b3405a3ea3079e63d78070840c44a9` |
| 10 | `def` | [specificationCode](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/specificationcode.md) | 74 | `declaration-track:892843102287e023157a0e21a115a212bbf29df10d3d003d920f3660a6e726f0` |
| 11 | `structure` | [FiberCoordinate](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/fibercoordinate.md) | 79 | `declaration-track:929083982a4252a6f8a373418aa079356b4e9da8e7755c80bfddd4df6193682c` |
| 12 | `def` | [mixedRadixValues](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/mixedradixvalues.md) | 87 | `declaration-track:96e0c03eece24b3249965f28603cfb0b078d88cb6a0f464938311b87e494ddf0` |
| 13 | `def` | [FiberCoordinate.mixedRadix](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/fibercoordinate-mixedradix.md) | 94 | `declaration-track:e8cc004f290ab7ab985120948fe359cd9ab20d65077e1b6be6235898701a8766` |
| 14 | `structure` | [MixedRadixEquivalence](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/mixedradixequivalence.md) | 102 | `declaration-track:9e7544a3b12beec018d35cc0ef5c50db383b2cad116e088bf20a4a20961e1ad4` |
| 15 | `structure` | [RawCarrierAddress](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rawcarrieraddress.md) | 111 | `declaration-track:07360203f78361313d18a0f9b435f57bc45aabb53e0d955aa0f8362127e7dfb8` |
| 16 | `def` | [rawAddressCode](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rawaddresscode.md) | 118 | `declaration-track:58f9406668767af891c75016b5feacb0c4f700168c3ae870318e9237b59883f9` |
| 17 | `structure` | [AddressEnumeration](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/addressenumeration.md) | 127 | `declaration-track:bcea1575e082b17224966de9a05e3c8fe35bc1d17f307d7653430ceca0a19493` |
| 18 | `def` | [naturalAddressEnumeration](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/naturaladdressenumeration.md) | 136 | `declaration-track:e6f618ac8392fd7523c9ed031a773659571e154f92042dc58439665e27861f68` |
| 19 | `def` | [rawAddressEquivNat](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rawaddressequivnat.md) | 143 | `declaration-track:2d40bc451851a7e9a419d1541344657954e4889fce8146ab742dbff4e628659c` |
| 20 | `def` | [rawAddressEnumeration](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rawaddressenumeration.md) | 159 | `declaration-track:5ded46e614058b9e6410f12c01d1021f88f70c0f607f3213773bda5161060319` |
| 21 | `def` | [rawCanonicalAddressEnumeration](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rawcanonicaladdressenumeration.md) | 168 | `declaration-track:b5bd752ec45fabfa5b195969a64be49ba5cba138b729e3b1ca7febc72f174e8f` |
| 22 | `theorem` | [rawCanonicalAddressEnumeration_code_enumerate](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rawcanonicaladdressenumeration-code-enumerate.md) | 177 | `result-track:2d6dc74a996a096799f0ea9cfae5fac740af0ddcb476fdaee6138731a54d7e11` |
| 23 | `theorem` | [rawCanonicalAddressEnumeration_order](../../../../NumberTheory/AddressCanonicalPrimeEnumeration.lean/declarations/rawcanonicaladdressenumeration-order.md) | 182 | `result-track:98d82d83eefe06e0ae38a1a3dcafa9edc447df526cc362a5be8f5e6690d5b078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e9bdb06fd1af89b7a5872a7d603f325a2aa48c6ce15fe3e95e48b1998243477 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
