/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gde-jesu <gde-jesu@student.42.rio>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/02 11:15:01 by gde-jesu          #+#    #+#             */
/*   Updated: 2023/09/02 15:54:25 by gde-jesu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void ft_lstiter(t_list *lst, void (*f)(void *))
{
  t_list	*node;
	t_list	*temp;

  node = lst;
	if (!node || !f)
		return ;
  while (node)
	{
		temp = node->next;
		if (f)
			f(node->content);
		node = temp;
	}
}
