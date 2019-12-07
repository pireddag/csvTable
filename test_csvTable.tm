<TeXmacs|1.99.11>

<style|<tuple|generic|csvTable>>

<\body>
  <paragraph|Inserted by typing>

  <\wide-tabular>
    <tformat|<table|<row|<\cell>
      a
    </cell>|<\cell>
      b
    </cell>|<\cell>
      c
    </cell>>|<row|<\cell>
      d
    </cell>|<\cell>
      e
    </cell>|<\cell>
      f
    </cell>>|<row|<\cell>
      g
    </cell>|<\cell>
      h
    </cell>|<\cell>
      i
    </cell>>>>
  </wide-tabular>

  <paragraph|Inserted with the csvTable macro>

  Call <code*|csvTable> with either the absolute or the relative path to the
  data file

  <inactive|<csvTable|dataSchemeTable.txt>> (also works)

  <csvTable|./dataSchemeTable.txt>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|4tab>|Inserted by typing
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Inserted with the csvTable macro
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>