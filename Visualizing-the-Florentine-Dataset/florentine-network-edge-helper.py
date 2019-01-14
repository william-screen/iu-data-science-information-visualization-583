# default all edges to light gray
for e in g.edges:
	e.color=lightgray
	
# iterate over edge attributes and set the color and label
for e in g.edges:
	if e.marriage == 'T' and e.business != 'T':
		e.color='254,182,219'
		#e.label=u'\u2665'
	elif e.marriage != 'T' and e.business == 'T':
		e.color='0,73,73'
		#e.label='$'
	elif e.marriage == 'T' and e.business == 'T':
		e.color='41,84,142'
		#e.label=u'\u2665' + '$'

# color the border of the nodes the same as the nodes themselves
for n in g.nodes:
	n.strokecolor = n.color	