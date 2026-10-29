import Mathematics.SemanticTokenization.Span

/-!
# Certified normalization and offset transport

Concrete Unicode normalization is performed externally.  Lean checks the
declared deterministic digest and the monotone endpoint transport.
-/

namespace Mathematics.SemanticTokenization

inductive UnicodeNormalization
  | none
  | nfc
  | nfd
  | nfkc
  | nfkd
deriving DecidableEq, Repr

inductive CasePolicy
  | preserve
  | lower
  | upper
  | fold
deriving DecidableEq, Repr

inductive LineEndingPolicy
  | preserve
  | lf
deriving DecidableEq, Repr

inductive WhitespacePolicy
  | preserve
  | collapse
  | trim
  | collapseAndTrim
deriving DecidableEq, Repr

inductive ControlCharacterPolicy
  | preserve
  | reject
  | remove
  | replace
deriving DecidableEq, Repr

structure NormalizationSpec where
  unicode : UnicodeNormalization
  casePolicy : CasePolicy
  lineEndings : LineEndingPolicy
  retainPunctuation : Bool
  whitespace : WhitespacePolicy
  controls : ControlCharacterPolicy
  specificationDigest : Digest
deriving DecidableEq, Repr

/-- Deterministic formal content encoding, not a cryptographic noncollision claim. -/
def hashNormalizedText
    (spec : NormalizationSpec)
    (raw : RawText)
    (normalized : TextCarrier) : Digest :=
  Digest.ofString
    (reprStr spec ++ "\u{0}" ++
      String.mk raw.chars.toList ++ "\u{0}" ++
      String.mk normalized.chars.toList)

structure OffsetTransport
    (raw : RawText)
    (normalized : TextCarrier) where
  map :
    Fin (raw.chars.size + 1) →
    Fin (normalized.chars.size + 1)
  monotone :
    Monotone map
  zero :
    map ⟨0, by omega⟩ = ⟨0, by omega⟩
  terminal :
    map ⟨raw.chars.size, by omega⟩ =
      ⟨normalized.chars.size, by omega⟩

structure NormalizationCertificate
    (raw : RawText)
    (normalized : TextCarrier)
    (spec : NormalizationSpec) where
  sourceIdentity : raw.id = normalized.id
  sourceDigest : raw.sourceDigest = normalized.sourceDigest
  normalizedDigest :
    normalized.normalizedDigest =
      hashNormalizedText spec raw normalized
  offsets : OffsetTransport raw normalized

structure OffsetSpanCertificate
    {raw : RawText}
    {normalized : TextCarrier}
    {spec : NormalizationSpec}
    (normalization :
      NormalizationCertificate raw normalized spec)
    (normalizedSpan : Span normalized) where
  rawStart : Nat
  rawStop : Nat
  rawStart_lt_stop : rawStart < rawStop
  rawStop_le_size : rawStop ≤ raw.chars.size
  startMaps :
    (normalization.offsets.map
      ⟨rawStart, by omega⟩).val =
      normalizedSpan.start
  stopMaps :
    (normalization.offsets.map
      ⟨rawStop, by omega⟩).val =
      normalizedSpan.stop

theorem offset_span_valid
    {raw : RawText}
    {normalized : TextCarrier}
    {spec : NormalizationSpec}
    {normalization :
      NormalizationCertificate raw normalized spec}
    {span : Span normalized}
    (_certificate :
      OffsetSpanCertificate normalization span) :
    span.Valid :=
  span.valid

def transportRawSpan
    {raw : RawText}
    {normalized : TextCarrier}
    {spec : NormalizationSpec}
    (certificate : NormalizationCertificate raw normalized spec)
    (span :
      Span
        { id := raw.id
          chars := raw.chars
          normalizedDigest := raw.sourceDigest
          sourceDigest := raw.sourceDigest }) :
    Option (Span normalized) :=
  let start :=
    certificate.offsets.map
      ⟨span.start, by
        have := span.stop_le_size
        omega⟩
  let stop :=
    certificate.offsets.map
      ⟨span.stop, by
        have := span.stop_le_size
        omega⟩
  if nonempty : start.val < stop.val then
    some
      { start := start.val
        stop := stop.val
        start_lt_stop := nonempty
        stop_le_size := by
          have bound := stop.isLt
          omega }
  else
    none

theorem transportRawSpan_sound
    {raw : RawText}
    {normalized : TextCarrier}
    {spec : NormalizationSpec}
    (certificate : NormalizationCertificate raw normalized spec)
    (span :
      Span
        { id := raw.id
          chars := raw.chars
          normalizedDigest := raw.sourceDigest
          sourceDigest := raw.sourceDigest })
    {transported : Span normalized}
    (result : transportRawSpan certificate span = some transported) :
    transported.Valid :=
  transported.valid

theorem normalization_snapshot_bound
    {raw : RawText}
    {normalized : TextCarrier}
    {spec : NormalizationSpec}
    (certificate : NormalizationCertificate raw normalized spec) :
    raw.id = normalized.id ∧
    raw.sourceDigest = normalized.sourceDigest :=
  ⟨certificate.sourceIdentity, certificate.sourceDigest⟩

end Mathematics.SemanticTokenization
